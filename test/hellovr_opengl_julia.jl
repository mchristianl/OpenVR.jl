using OpenVR

include("hellovr_opengl_structs.jl")

ActionManifestPath = "/home/christianl/src/openvr/samples/bin/hellovr_actions.json"
strFullPath = "/home/christianl/src/openvr/samples/bin/cube_texture.png"

# https://stackoverflow.com/questions/39399187/case-insensitive-string-comparison-in-julia
using Unicode # Unicode.normalize
stricmp(a,b) = Unicode.normalize(a; casefold=true) == Unicode.normalize(b; casefold=true)

function mkCMainApplication( argv::Array{String} = String[]) :: CMainApplication
  this = CMainApplication()
  this.m_pCompanionWindow               = C_NULL
  this.m_pContext                       = C_NULL
  this.m_nCompanionWindowWidth          = 640
  this.m_nCompanionWindowHeight         = 320
  this.m_unSceneProgramID               = 0
  this.m_unCompanionWindowProgramID     = 0
  this.m_unControllerTransformProgramID = 0
  this.m_unRenderModelProgramID         = 0
  this.m_pHMD                           = C_NULL
  this.m_bDebugOpenGL                   = false
  this.m_bVerbose                       = false
  this.m_bPerf                          = false
  this.m_bVblank                        = false
  this.m_bGlFinishHack                  = true
  this.m_glControllerVertBuffer         = 0
  this.m_unControllerVAO                = 0
  this.m_unSceneVAO                     = 0
  this.m_nSceneMatrixLocation           = -1
  this.m_nControllerMatrixLocation      = -1
  this.m_nRenderModelMatrixLocation     = -1
  this.m_iTrackedControllerCount        = 0
  this.m_iTrackedControllerCount_Last   = -1
  this.m_iValidPoseCount                = 0
  this.m_iValidPoseCount_Last           = -1
  this.m_iSceneVolumeInit               = 20
  this.m_strPoseClasses                 = ""
  this.m_bShowCubes                     = true
  this.m_rHand                          = [ControllerInfo_t(),ControllerInfo_t()] # must initialize non-isbits (else they become #undef)
  this.m_vecRenderModels                = [] # must initialize non-isbits (else they become #undef)
  this.m_vecRenderModelsr               = [] # must initialize non-isbits (else they become #undef)
  argc = length(argv)
  for i = 0:argc-1
    if ( ~stricmp( argv[i+1], "-gldebug" ) )
      m_bDebugOpenGL = true;
    elseif ( ~stricmp( argv[i+1], "-verbose" ) )
      m_bVerbose = true;
    elseif ( ~stricmp( argv[i+1], "-novblank" ) )
      m_bVblank = false;
    elseif ( ~stricmp( argv[i+1], "-noglfinishhack" ) )
      m_bGlFinishHack = false;
    elseif ( ~stricmp( argv[i+1], "-noprintf" ) )
      g_bPrintf = false;
    elseif ( ~stricmp( argv[i+1], "-cubevolume" ) && ( argc > i + 1 ) && ( argv[ i + 1 +1][1] != '-' ) )
      m_iSceneVolumeInit = atoi( argv[ i + 1 +1] );
      i+=1;
    end
  end
  # other initialization tasks are done in BInit
  this.m_rDevClassChar = zeros(SArray{Tuple{64},Int8,1,64})
  return this
end

using MemoryMutate # provides @mem

Base.fieldoffset(T :: DataType, field :: Symbol) = fieldoffset(T,findfirst(x -> x == field,fieldnames(T)))
fieldpointer(this,field) = pointer_from_objref(this) + fieldoffset(typeof(this),field)

using LinearAlgebra # inv

# all this just to load PNG
# https://github.com/JuliaIO/ImageMagick.jl
using FileIO
using ImageMagick
using ColorTypes
using FixedPointNumbers

using SimpleDirectMediaLayer
const SDL = SimpleDirectMediaLayer
SDLText = Dict(vcat(map(M -> map(s -> getproperty(M,s) => s,filter(s -> typeof(getproperty(M,s)) == UInt32,names(M;all=true,imported=false))),[SDL])...))

using CxxWrap
module_functions = CxxWrap.get_module_functions(OpenVR)

# glmain() = ccall((:main, "/home/christianl/src/openvr/samples/bin/linux64/libhellovr_julia.so"), Int32, (Cint, Ref{Cstring}),0,[])

# https://discourse.julialang.org/t/initializing-an-array-of-mutable-objects-is-surprisingly-slow/11780
#   Indeed, isbits type are stored inline in the array, non isbits typed are stored with pointers

# allocate typetagged memory within julia
# jMainApplication  = CMainApplication()
jMainApplication = mkCMainApplication()
this = pMainApplication = jMainApplication
# pMainApplication = CMainApplication()
# app = pMainApplication = unsafe_load(convert(Ptr{CMainApplicationAllocated},pointer_from_objref(Ref(pointer_from_objref(jMainApplication)))))
app = jMainApplication
# use C++ placement new to put the object there
# OpenVR.placeCMainApplication(pointer_from_objref(jMainApplication))

using CxxWrap
using ModernGL
ModernGL.glShaderSource(shader::GLuint,source::String) = glShaderSource(shader,1,[source],[length(source)])

# https://gamedev.stackexchange.com/questions/70829/why-is-gl-texture-max-anisotropy-ext-undefined
const GL_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE
const GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF

frame = 0

# -----------------------------------------------------------------------------
#  Purpose: Draws the render model
# -----------------------------------------------------------------------------
function Draw(ptr::Ref{CGLRenderModel})
  this = unsafe_load(ptr)
  glBindVertexArray( this.m_glVertArray );

  glActiveTexture( GL_TEXTURE0 );
  glBindTexture( GL_TEXTURE_2D, this.m_glTexture );

  glDrawElements( GL_TRIANGLES, this.m_unVertexCount, GL_UNSIGNED_SHORT, C_NULL );

  glBindVertexArray( 0 );
end

# -----------------------------------------------------------------------------
#  Purpose: Gets a Current View Projection Matrix with respect to nEye,
#           which may be an Eye_Left or an Eye_Right.
# -----------------------------------------------------------------------------
function GetCurrentViewProjectionMatrix( app :: CMainApplication, nEye::OpenVR.Hmd_Eye ) :: Matrix4
  return Matrix4(
    ( nEye == OpenVR.Eye_Left
    ? this.m_mat4ProjectionLeft.m * this.m_mat4eyePosLeft.m * this.m_mat4HMDPose.m
    : nEye == OpenVR.Eye_Right
    ? this.m_mat4ProjectionRight.m * this.m_mat4eyePosRight.m *  this.m_mat4HMDPose.m
    :  zeros(4,4)
    )
    , zeros(4,4)
  )
end

function RenderScene( app :: CMainApplication, nEye :: OpenVR.Hmd_Eye  )
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  glEnable(GL_DEPTH_TEST);

  if ( this.m_bShowCubes )
    glUseProgram( this.m_unSceneProgramID );
    vpm = GetCurrentViewProjectionMatrix( app, nEye )
    vpm_arr = Array(vpm.m[:])
    # Effect:
    #   Idiag = [0,5,10] .+ 1
    #   vpm_arr[Idiag] .*= 1.0 + 0.1*cos(frame/50.0)
    glUniformMatrix4fv( this.m_nSceneMatrixLocation, 1, GL_FALSE, vpm_arr);
    glBindVertexArray( this.m_unSceneVAO );
    glBindTexture( GL_TEXTURE_2D, this.m_iTexture );
    glDrawArrays( GL_TRIANGLES, 0, this.m_uiVertcount );
    glBindVertexArray( 0 );
  end

  m_pHMD = unsafe_load(convert(Ptr{Main.OpenVR.IVRSystemRef},pointer_from_objref(Ref(this.m_pHMD))))
  bIsInputAvailable = OpenVR.IsInputAvailable(m_pHMD);

  if ( bIsInputAvailable )
    # draw the controller axis lines
    glUseProgram( this.m_unControllerTransformProgramID );
    cvpm = GetCurrentViewProjectionMatrix( app, nEye )
    cvpm_arr = Array(cvpm.m[:])
    glUniformMatrix4fv( this.m_nControllerMatrixLocation, 1, GL_FALSE, convert(Array{Float32},cvpm_arr) );
    glBindVertexArray( this.m_unControllerVAO );
    glDrawArrays( GL_LINES, 0, this.m_uiControllerVertcount );
    glBindVertexArray( 0 );
  end

  # ----- Render Model rendering -----
  glUseProgram( this.m_unRenderModelProgramID );

  Left = 0 # TODO: use CxxWrap.jl enum here instead
  Right = 1 # TODO: use CxxWrap.jl enum here instead
  for eHand = Left:Right
    m_rHand = this.m_rHand[eHand+1]

    # if ( !OpenVR.get_m_bShowController(m_rHand) || !OpenVR.get_m_pRenderModel(m_rHand) )
    if ( ~m_rHand.m_bShowController || m_rHand.m_pRenderModel == C_NULL )
      continue;
    end

    matDeviceToTracking = m_rHand.m_rmat4Pose;
    # TODO
    mvp = GetCurrentViewProjectionMatrix( app, nEye )
    # @GC.preserve mvpAllocated mvp = unsafe_load(reinterpret(Ptr{Matrix4},mvpAllocated.cpp_object))
    matMVP = mvp.m * matDeviceToTracking.m; # Julia!
    # println("matMVP = ")
    # display(matMVP)
    # matMVP =
    # 4×4 SArray{Tuple{4,4},Float32,2,16}:
    #  -0.546565  0.057945  -0.517612   -0.115377
    #   0.154928  0.65361   -0.0908573   0.0428849
    #  -0.703296  0.265281   0.664606    0.535649
    #  -0.700951  0.264397   0.66239     0.633863
    # matMVP =
    # 4×4 SArray{Tuple{4,4},Float32,2,16}:
    #  -0.470299  0.0286927  -0.593067   -0.232342
    #   0.155731  0.65562    -0.0914356   0.0427533
    #  -0.703296  0.265281    0.664606    0.535649
    #  -0.700951  0.264397    0.66239     0.633863
    # matMVP_arr = OpenVR.get(matMVP)
    # 4×4 SArray{Tuple{4,4},Float32,2,16}:
    #  -0.546429  0.0581639  -0.517731   -0.115242
    #   0.155199  0.653552   -0.0908119   0.0428902
    #  -0.703339  0.265539    0.664457    0.535495
    #  -0.700995  0.264654    0.662242    0.63371
    # matMVP =
    # 4×4 SArray{Tuple{4,4},Float32,2,16}:
    #  -0.470159  0.0288837  -0.593169   -0.23219
    #   0.156003  0.655562   -0.0913901   0.0427586
    #  -0.703339  0.265539    0.664457    0.535495
    #  -0.700995  0.264654    0.662242    0.63371
    matMVP_arr = Array(matMVP[:])
    glUniformMatrix4fv( this.m_nRenderModelMatrixLocation, 1, GL_FALSE, convert(Array{Float32},matMVP_arr) );
    # glUniformMatrix4fv( this.m_nRenderModelMatrixLocation, 1, GL_FALSE, [matMVP.data...] );

    # m_pRenderModel = Ref(m_rHand.m_pRenderModel) # TODO
    # @GC.preserve m_pRenderModel m_pRenderModelRef = unsafe_load(reinterpret(Ptr{CGLRenderModelRef},pointer_from_objref(m_pRenderModel)))
    # OpenVR.Draw(m_pRenderModelRef);
    Draw(m_rHand.m_pRenderModel);
  end

  glUseProgram( 0 );
end

function RenderStereoTargets(app :: CMainApplication)
  glClearColor( 0.0, 0.0, 0.0, 1.0 );
  glEnable( GL_MULTISAMPLE );

  # Left Eye
  leftEyeDesc = this.leftEyeDesc
  glBindFramebuffer( GL_FRAMEBUFFER, leftEyeDesc.m_nRenderFramebufferId );
   glViewport(0, 0, this.m_nRenderWidth, this.m_nRenderHeight );
   # OpenVR.RenderScene(app, OpenVR.Eye_Left );
   RenderScene(app, OpenVR.Eye_Left );
   glBindFramebuffer( GL_FRAMEBUFFER, 0 );

  glDisable( GL_MULTISAMPLE );

   glBindFramebuffer(GL_READ_FRAMEBUFFER, leftEyeDesc.m_nRenderFramebufferId);
    glBindFramebuffer(GL_DRAW_FRAMEBUFFER, leftEyeDesc.m_nResolveFramebufferId );

    glBlitFramebuffer( 0, 0, this.m_nRenderWidth, this.m_nRenderHeight, 0, 0, this.m_nRenderWidth, this.m_nRenderHeight,
    GL_COLOR_BUFFER_BIT,
     GL_LINEAR );

   glBindFramebuffer(GL_READ_FRAMEBUFFER, 0);
    glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0 );

  glEnable( GL_MULTISAMPLE );

  # Right Eye
  rightEyeDesc = this.rightEyeDesc
  glBindFramebuffer( GL_FRAMEBUFFER, rightEyeDesc.m_nRenderFramebufferId );
   glViewport(0, 0, this.m_nRenderWidth, this.m_nRenderHeight );
   # OpenVR.RenderScene(app, OpenVR.Eye_Right );
   RenderScene(app, OpenVR.Eye_Right );
   glBindFramebuffer( GL_FRAMEBUFFER, 0 );

  glDisable( GL_MULTISAMPLE );

   glBindFramebuffer(GL_READ_FRAMEBUFFER, rightEyeDesc.m_nRenderFramebufferId );
    glBindFramebuffer(GL_DRAW_FRAMEBUFFER, rightEyeDesc.m_nResolveFramebufferId );

    glBlitFramebuffer( 0, 0, this.m_nRenderWidth, this.m_nRenderHeight, 0, 0, this.m_nRenderWidth, this.m_nRenderHeight,
    GL_COLOR_BUFFER_BIT,
     GL_LINEAR  );

   glBindFramebuffer(GL_READ_FRAMEBUFFER, 0);
    glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0 );
end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function UpdateHMDMatrixPose(app :: CMainApplication)
  if ( this.m_pHMD == C_NULL )
    return;
  end
  m_pHMD = unsafe_load(convert(Ptr{Main.OpenVR.IVRSystemRef},pointer_from_objref(Ref(this.m_pHMD)))) # TODO

  vrcompositor = OpenVR.VRCompositor()
  m_rTrackedDevicePosePtr = @ptr this.m_rTrackedDevicePose[1]
  OpenVR.WaitGetPoses(vrcompositor,m_rTrackedDevicePosePtr, OpenVR.k_unMaxTrackedDeviceCount, C_NULL, 0 );

  this.m_iValidPoseCount = 0;
  # this.m_strPoseClassesJ = "";
  m_strPoseClassesJ = "";
  for nDevice = 0:OpenVR.k_unMaxTrackedDeviceCount-1
    if ( this.m_rTrackedDevicePose[nDevice+1].bPoseIsValid )
      this.m_iValidPoseCount += 1;
      @mem this.m_rmat4DevicePose[nDevice+1] = ConvertSteamVRMatrixToMatrix4( this.m_rTrackedDevicePose[nDevice+1].mDeviceToAbsoluteTracking );
      if (this.m_rDevClassChar[nDevice+1]==0)
        tdc = OpenVR.GetTrackedDeviceClass(m_pHMD,nDevice)
        if     tdc == OpenVR.TrackedDeviceClass_Controller       ; @mem this.m_rDevClassChar[nDevice+1] = 'C'
        elseif tdc == OpenVR.TrackedDeviceClass_HMD              ; @mem this.m_rDevClassChar[nDevice+1] = 'H'
        elseif tdc == OpenVR.TrackedDeviceClass_Invalid          ; @mem this.m_rDevClassChar[nDevice+1] = 'I'
        elseif tdc == OpenVR.TrackedDeviceClass_GenericTracker   ; @mem this.m_rDevClassChar[nDevice+1] = 'G'
        elseif tdc == OpenVR.TrackedDeviceClass_TrackingReference; @mem this.m_rDevClassChar[nDevice+1] = 'T'
        else                                                   @mem this.m_rDevClassChar[nDevice+1] = '?'
        end
      end
      m_strPoseClassesJ *= Char(this.m_rDevClassChar[nDevice+1]);
    end
  end
  # OpenVR.setJuliaStringTostdstring(m_strPoseClassesJ,@voidptr this.m_strPoseClasses); # TODO
  this.m_strPoseClasses = m_strPoseClassesJ

  if ( this.m_rTrackedDevicePose[OpenVR.k_unTrackedDeviceIndex_Hmd+1].bPoseIsValid )
    this.m_mat4HMDPose = this.m_rmat4DevicePose[OpenVR.k_unTrackedDeviceIndex_Hmd+1];
    @mem this.m_mat4HMDPose.m = inv(this.m_mat4HMDPose.m);
  end
end

function RenderCompanionWindow(app :: CMainApplication)
  glDisable(GL_DEPTH_TEST);
  glViewport( 0, 0, this.m_nCompanionWindowWidth, this.m_nCompanionWindowHeight );

  glBindVertexArray( this.m_unCompanionWindowVAO );
  glUseProgram( this.m_unCompanionWindowProgramID );

  # render left eye (first half of index array )
  glBindTexture(GL_TEXTURE_2D, this.leftEyeDesc.m_nResolveTextureId );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
  glDrawElements( GL_TRIANGLES, this.m_uiCompanionWindowIndexSize/2, GL_UNSIGNED_SHORT, C_NULL );

  # render right eye (second half of index array )
  glBindTexture(GL_TEXTURE_2D, this.rightEyeDesc.m_nResolveTextureId  );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
  glDrawElements( GL_TRIANGLES, this.m_uiCompanionWindowIndexSize/2, GL_UNSIGNED_SHORT, C_NULL + this.m_uiCompanionWindowIndexSize );

  glBindVertexArray( 0 );
  glUseProgram( 0 );
end

#-----------------------------------------------------------------------------
# Purpose: Draw all of the controllers as X/Y/Z lines
#-----------------------------------------------------------------------------
function RenderControllerAxes(app :: CMainApplication)
  m_pHMD = unsafe_load(convert(Ptr{Main.OpenVR.IVRSystemRef},pointer_from_objref(Ref(this.m_pHMD)))) # TODO
  # Don't attempt to update controllers if input is not available
  if ( !OpenVR.IsInputAvailable(m_pHMD) )
    return;
  end

  vertdataarray = Float32[];

  this.m_uiControllerVertcount = 0;
  this.m_iTrackedControllerCount = 0;

  Left = 0 # TODO
  Right = 1 # TODO

  for eHand = Left:Right
    if ( !this.m_rHand[eHand+1].m_bShowController )
      continue;
    end

    mat = this.m_rHand[eHand+1].m_rmat4Pose.m;

    center = mat * Float32[ 0, 0, 0, 1 ];

    for i = 0:3-1
      color = Float32[ 0, 0, 0 ];
      point = Float32[ 0, 0, 0, 1 ];Float32
      point[i+1] += 0.05f0;  # offset in X, Y, Z
      color[i+1] = 1.0;  # R, G, B
      point = mat * point;
      push!(vertdataarray, center[1] );
      push!(vertdataarray, center[2] );
      push!(vertdataarray, center[3] );

      push!(vertdataarray, color[1] );
      push!(vertdataarray, color[2] );
      push!(vertdataarray, color[3] );

      push!(vertdataarray, point[1] );
      push!(vertdataarray, point[2] );
      push!(vertdataarray, point[3] );

      push!(vertdataarray, color[1] );
      push!(vertdataarray, color[2] );
      push!(vertdataarray, color[3] );

      this.m_uiControllerVertcount += 2;
    end

    start = mat * Float32[ 0, 0, -0.02f0, 1 ];
    ende = mat * Float32[ 0, 0, -39.0f0, 1 ];
    color = Float32[ .92f0, .92f0, .71f0 ];

    push!(vertdataarray, start[1] );push!(vertdataarray, start[2] );push!(vertdataarray, start[3] );
    push!(vertdataarray, color[1] );push!(vertdataarray, color[2] );push!(vertdataarray, color[3] );

    push!(vertdataarray, ende[1] );push!(vertdataarray, ende[2] );push!(vertdataarray, ende[3] );
    push!(vertdataarray, color[1] );push!(vertdataarray, color[2] );push!(vertdataarray, color[3] );
    this.m_uiControllerVertcount += 2;
  end

  # Setup the VAO the first time through.
  if ( this.m_unControllerVAO == 0 )
    m_unControllerVAOptr = @ptr this.m_unControllerVAO
    glGenVertexArrays( 1, m_unControllerVAOptr );
    glBindVertexArray( this.m_unControllerVAO );

    m_glControllerVertBufferptr = @ptr this.m_glControllerVertBuffer
    glGenBuffers( 1, m_glControllerVertBufferptr );
    glBindBuffer( GL_ARRAY_BUFFER, this.m_glControllerVertBuffer );

    stride = GLuint(2 * 3 * sizeof( Float32 ));
    offset = 0; # GLuint

    glEnableVertexAttribArray( 0 );
    glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, stride, C_NULL + offset);

    offset += 3*sizeof( Float32 );
    glEnableVertexAttribArray( 1 );
    glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, stride, C_NULL + offset);

    glBindVertexArray( 0 );
  end

  glBindBuffer( GL_ARRAY_BUFFER, this.m_glControllerVertBuffer );

  # set vertex data if we have some
  if ( length(vertdataarray) > 0 )
    #$ TODO: Use glBufferSubData for this...
    glBufferData( GL_ARRAY_BUFFER, sizeof(Float32) * length(vertdataarray), vertdataarray, GL_STREAM_DRAW );
  end
end

function RenderFrame(app :: CMainApplication)
  global frame += 1
  # for now as fast as possible
  if ( this.m_pHMD != C_NULL )
    RenderControllerAxes(app)
    RenderStereoTargets(app)
    RenderCompanionWindow(app)

    # bounds_null = Main.OpenVR.VRTextureBounds_t()
    # bounds_null.cpp_object = C_NULL
    # bounds_null = nullptr(Main.OpenVR.VRTextureBounds_t) # like so?

    glFlush();
    glFinish();

    comp = OpenVR.VRCompositor()
    leftEyeDesc = this.leftEyeDesc
    leftEyeTexture = OpenVR.Texture_t(UInt64(leftEyeDesc.m_nResolveTextureId), OpenVR.TextureType_OpenGL, OpenVR.ColorSpace_Gamma)
    OpenVR.Submit(comp,OpenVR.Eye_Left,leftEyeTexture,C_NULL,OpenVR.Submit_Default)

    rightEyeDesc = this.rightEyeDesc
    rightEyeTexture = OpenVR.Texture_t(UInt64(rightEyeDesc.m_nResolveTextureId), OpenVR.TextureType_OpenGL, OpenVR.ColorSpace_Gamma)
    OpenVR.Submit(comp,OpenVR.Eye_Right,rightEyeTexture,C_NULL,OpenVR.Submit_Default)
  end

  if ( this.m_bVblank && this.m_bGlFinishHack )
    # $ HACKHACK. From gpuview profiling, it looks like there is a bug where two renders and a present
    #  happen right before and after the vsync causing all kinds of jittering issues. This glFinish()
    #  appears to clear that up. Temporary fix while I try to get nvidia to investigate this problem.
    #  1/29/2014 mikesart
    glFinish();
  end

  # SwapWindow
  SDL.GL_SwapWindow( this.m_pCompanionWindow );

  # Clear
    # We want to make sure the glFinish waits for the entire present to complete, not just the submission
    # of the command. So, we do a clear here right here so the glFinish will wait fully for the swap.
    glClearColor( 0, 0, 0, 1 );
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

  # Flush and wait for swap.
  if ( this.m_bVblank )
    glFlush();
    glFinish();
  end

  # Spew out the controller and pose count whenever they change.
  if ( this.m_iTrackedControllerCount != this.m_iTrackedControllerCount_Last || this.m_iValidPoseCount != this.m_iValidPoseCount_Last )
    this.m_iValidPoseCount_Last = this.m_iValidPoseCount
    this.m_iTrackedControllerCount_Last = this.m_iTrackedControllerCount

    # println( "PoseCount:$(this.m_iValidPoseCount)($(this.m_strPoseClassesJ)) Controllers:$(this.m_iTrackedControllerCount)");
    println( "PoseCount:$(this.m_iValidPoseCount)($(this.m_strPoseClasses)) Controllers:$(this.m_iTrackedControllerCount)");
  end

  UpdateHMDMatrixPose(app);
end


# OpenVR.HmdMatrix34_t is backed by a row-major, two dimensional C-array
#   so this is in Julia a transposed 3×4 matrix
# Matrix4 is backed by a column-major, one dimensional C-array
# ConvertSteamVRMatrixToMatrix4(matPose::OpenVR.HmdMatrix34_t) = Matrix4([ (r < 4 ? matPose.m[c,r] : c < 4 ? 0f0 : 1f0) for r in 1:4, c in 1:4  ],zeros(Float32,4,4))
ConvertSteamVRMatrixToMatrix4(matPose::OpenVR.HmdMatrix34_t) = Matrix4(transpose(hcat(matPose.m,[0,0,0,1])),zeros(Float32,4,4))

# -----------------------------------------------------------------------------
#  Purpose: Gets a Matrix Projection Eye with respect to nEye.
# -----------------------------------------------------------------------------
function GetHMDMatrixProjectionEye(app::CMainApplication, nEye::OpenVR.Hmd_Eye )::Matrix4
  if (this.m_pHMD == C_NULL )
    return Matrix4(Matrix{Float32}(I,4,4),zeros(4,4));
  end

  m_pHMD = unsafe_load(convert(Ptr{Main.OpenVR.IVRSystemRef},pointer_from_objref(Ref(this.m_pHMD)))) # TODO
  mat = OpenVR.GetProjectionMatrix(m_pHMD, nEye, this.m_fNearClip, this.m_fFarClip ); # OpenVR uses row-major, two dimensional C-Arrays, where we use column-major two-dimensional Julia StaticArrays
                                                                                     # that is why we "receive" the transposed matrix in Julia
  # @GC.preserve matr mat = unsafe_load(reinterpret(Ptr{SArray{Tuple{4,4},Float32,2,16}}, matr.cpp_object))

  return Matrix4(transpose(mat.m),zeros(Float32,4,4));
end


# -----------------------------------------------------------------------------
#  Purpose: Gets an HMDMatrixPoseEye with respect to nEye.
# -----------------------------------------------------------------------------
function GetHMDMatrixPoseEye(app::CMainApplication, nEye::OpenVR.Hmd_Eye )::Matrix4
  if (this.m_pHMD == C_NULL )
    return Matrix4(Matrix{Float32}(I,4,4),zeros(4,4));
  end

  m_pHMD = unsafe_load(convert(Ptr{Main.OpenVR.IVRSystemRef},pointer_from_objref(Ref(this.m_pHMD)))) # TODO
  mat = OpenVR.GetEyeToHeadTransform(m_pHMD, nEye ); # OpenVR uses row-major, two dimensional C-Arrays, where we use column-major two-dimensional Julia StaticArrays
                                                    # that is why we "receive" the transposed matrix in Julia
  # @GC.preserve matr mat = unsafe_load(reinterpret(Ptr{SArray{Tuple{4,4},Float32,2,16}}, matr.cpp_object))

  return Matrix4(inv(transpose(hcat(mat.m,[0,0,0,1]))),zeros(Float32,4,4));
end

# sudo pacman -S sdl2_ttf sdl2_mixer

# m_bShowCubes = true

# Left = 0
# Right = 1

# -----------------------------------------------------------------------------
#  Purpose: Helper to get a string from a tracked device property and turn it
#       into a std::string
# -----------------------------------------------------------------------------
function GetTrackedDeviceString( unDevice::OpenVR.TrackedDeviceIndex_t, prop::OpenVR.TrackedDeviceProperty) :: String
  vrsystem = OpenVR.VRSystem()
  return isnull(vrsystem) ? "" : OpenVR.GetStringTrackedDeviceProperty(vrsystem,unDevice,prop)
end

# ---------------------------------------------------------------------------------------------------------------------
#  Purpose: Returns true if the action is active and had a rising edge
# ---------------------------------------------------------------------------------------------------------------------
function GetDigitalActionRisingEdge(action :: OpenVR.VRActionHandle_t, pDevicePath::Ptr{OpenVR.VRInputValueHandle_t} = C_NULL ) :: Bool
  actionData = Ref{OpenVR.InputDigitalActionData_t}();
  vrinput = OpenVR.VRInput()
  OpenVR.GetDigitalActionData(vrinput,action,actionData, sizeof(actionData), OpenVR.k_ulInvalidInputValueHandle );
  if (pDevicePath != C_NULL)
    unsafe_store!(pDevicePath, OpenVR.k_ulInvalidInputValueHandle);
    if (actionData[].bActive)
      originInfo = Ref{OpenVR.InputOriginInfo_t}();
      if (OpenVR.VRInputError_None == OpenVR.GetOriginTrackedDeviceInfo(vrinput,actionData[].activeOrigin, originInfo, sizeof(originInfo)))
        unsafe_store!(pDevicePath,originInfo[].devicePath)
      end
    end
  end
  return actionData[].bActive && actionData[].bChanged && actionData[].bState;
end

# ---------------------------------------------------------------------------------------------------------------------
#  Purpose: Returns true if the action is active and had a falling edge
# ---------------------------------------------------------------------------------------------------------------------
function GetDigitalActionFallingEdge(action::OpenVR.VRActionHandle_t, pDevicePath::Ptr{OpenVR.VRInputValueHandle_t} = C_NULL )::Bool
  actionData = Ref{InputDigitalActionData_t}();
  vrinput = OpenVR.VRInput()
  OpenVR.GetDigitalActionData(vrinput,action,actionData, sizeof(actionData), OpenVR.k_ulInvalidInputValueHandle );
  if (pDevicePath != C_NULL)
    unsafe_store!(pDevicePath, OpenVR.k_ulInvalidInputValueHandle)
    if (actionData[].bActive)
      originInfo = Ref{InputOriginInfo_t}();
      if (OpenVR.VRInputError_None == OpenVR.GetOriginTrackedDeviceInfo(vrinput,actionData[].activeOrigin, originInfo, sizeof(originInfo)))
        unsafe_store!(pDevicePath, originInfo[].devicePath);
      end
    end
  end
  return actionData[].bActive && actionData[].bChanged && ~actionData[].bState;
end

# ---------------------------------------------------------------------------------------------------------------------
#  Purpose: Returns true if the action is active and its state is true
# ---------------------------------------------------------------------------------------------------------------------
function GetDigitalActionState(action::OpenVR.VRActionHandle_t, pDevicePath::Ptr{OpenVR.VRInputValueHandle_t} = C_NULL ) :: Bool
  actionData = Ref{OpenVR.InputDigitalActionData_t}();
  vrinput = OpenVR.VRInput()
  OpenVR.GetDigitalActionData(vrinput,action, actionData, sizeof(actionData), OpenVR.k_ulInvalidInputValueHandle );
  if (pDevicePath != C_NULL)
    unsafe_store!(pDevicePath, OpenVR.k_ulInvalidInputValueHandle);
    if (actionData[].bActive)
      originInfo = Ref{OpenVR.InputOriginInfo_t}();
      if (OpenVR.VRInputError_None == OpenVR.GetOriginTrackedDeviceInfo(vrinput,actionData[].activeOrigin, originInfo, sizeof(originInfo)))
        unsafe_store!(pDevicePath, originInfo[].devicePath);
      end
    end
  end
  return actionData[].bActive && actionData[].bState;
end

# -----------------------------------------------------------------------------
#  Purpose: Processes a single VR event
# -----------------------------------------------------------------------------
function ProcessVREvent( event::OpenVR.VREvent_t )
  event.eventType == OpenVR.VREvent_TrackedDeviceDeactivated && println("Device $(event.trackedDeviceIndex) detached")
  event.eventType == OpenVR.VREvent_TrackedDeviceUpdated     && println("Device $(event.trackedDeviceIndex) updated")
end

# -----------------------------------------------------------------------------
#  Purpose: Allocates and populates the GL resources for a render model
# -----------------------------------------------------------------------------
function BInit(this::Ref{CGLRenderModel}, vrModel::OpenVR.RenderModel_t, vrDiffuseTexture::OpenVR.RenderModel_TextureMap_t )::Bool
  # create and bind a VAO to hold state for this model
  glGenVertexArrays( 1, @ptr this[].m_glVertArray );
  glBindVertexArray( this[].m_glVertArray );

  # Populate a vertex buffer
  glGenBuffers( 1, @ptr this[].m_glVertBuffer );
  glBindBuffer( GL_ARRAY_BUFFER, this[].m_glVertBuffer );
  glBufferData( GL_ARRAY_BUFFER, sizeof( OpenVR.RenderModel_Vertex_t ) * vrModel.unVertexCount, vrModel.rVertexData, GL_STATIC_DRAW );

  # Identify the components in the vertex buffer
  glEnableVertexAttribArray( 0 );
  glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, sizeof( OpenVR.RenderModel_Vertex_t ), Ptr{Nothing}(fieldoffset( OpenVR.RenderModel_Vertex_t, :vPosition )) );
  glEnableVertexAttribArray( 1 );
  glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, sizeof( OpenVR.RenderModel_Vertex_t ), Ptr{Nothing}(fieldoffset( OpenVR.RenderModel_Vertex_t, :vNormal )) );
  glEnableVertexAttribArray( 2 );
  glVertexAttribPointer( 2, 2, GL_FLOAT, GL_FALSE, sizeof( OpenVR.RenderModel_Vertex_t ), Ptr{Nothing}(fieldoffset( OpenVR.RenderModel_Vertex_t, :rfTextureCoord )) );

  # Create and populate the index buffer
  glGenBuffers( 1, @ptr this[].m_glIndexBuffer );
  glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, this[].m_glIndexBuffer );
  rIndexData = Ptr{Nothing}(UInt64(vrModel.rIndexData1) + (UInt64(vrModel.rIndexData2) << 32)) # TODO: this is a manual conversion due to different alignment of Julia structs; we might provide a function for this (or use getindex)
  glBufferData( GL_ELEMENT_ARRAY_BUFFER, sizeof( UInt16 ) * vrModel.unTriangleCount * 3, rIndexData, GL_STATIC_DRAW );

  glBindVertexArray( 0 );

  # create and populate the texture
  glGenTextures(1, @ptr this[].m_glTexture );
  glBindTexture( GL_TEXTURE_2D, this[].m_glTexture );

  rubTextureMapData = Ptr{Nothing}(UInt64(vrDiffuseTexture.rubTextureMapData1) + UInt64(vrDiffuseTexture.rubTextureMapData2) << 32) # TODO: same
  glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, vrDiffuseTexture.unWidth, vrDiffuseTexture.unHeight,
    0, GL_RGBA, GL_UNSIGNED_BYTE, rubTextureMapData);

  # If this renders black ask McJohn what's wrong.
  glGenerateMipmap(GL_TEXTURE_2D);

  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR );

  fLargest = Ref{GLfloat}();
  glGetFloatv( GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT, fLargest );
  glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAX_ANISOTROPY_EXT, fLargest[] );

  glBindTexture( GL_TEXTURE_2D, 0 );

  @yolo this[].m_unVertexCount = vrModel.unTriangleCount * 3;

  return true;
end

# -----------------------------------------------------------------------------
#  Purpose: Finds a render model we've already loaded or loads a new one
# -----------------------------------------------------------------------------
function FindOrLoadRenderModel(app::CMainApplication, pchRenderModelName::String ) :: Ptr{CGLRenderModel}
  pRenderModel = Ptr{CGLRenderModel}(C_NULL);
  for i in this.m_vecRenderModels
    # r = unsafe_pointer_to_objref(i)
    # r = unsafe_load(i)
    r = i
    # str = OpenVR.stdstringToJuliaString(@ptr r[].m_sModelName)
    str = i.m_sModelName
    if ( str != pchRenderModelName )
      pRenderModel = Ref(i);
      break;
    end
  end

  # load the model if we didn't find one
  if ( pRenderModel == C_NULL )
    pModel = Ref{Ptr{OpenVR.RenderModel_t}}(C_NULL);
    # pModel = Ref{OpenVR.RenderModel_t}();
    err = OpenVR.VRRenderModelError_None;
    vrrendermodels = OpenVR.VRRenderModels()
    while ( true )
      err = OpenVR.LoadRenderModel_Async(vrrendermodels, pchRenderModelName, pModel );
      if ( err != OpenVR.VRRenderModelError_Loading )
        break;
      end

      sleep( 1e-1 );
    end

    if ( err != OpenVR.VRRenderModelError_None )
      println( "Unable to load render model $(pchRenderModelName) - $(OpenVR.GetRenderModelErrorNameFromEnum( vrrendermodels,err ))");
      return Ptr{CGLRenderModel}(C_NULL); # move on to the next tracked device
    end

    # renderModel = `vr_controller_vive_1_5`
    # pModel->rVertexData      = 0x7fec3411ee80
    # pModel->unVertexCount    = 12199
    # pModel->rIndexData       = 0x7fec3417e370
    # pModel->unTriangleCount  = 17326
    # pModel->diffuseTextureId = 0

    # pchRenderModelName         = vr_controller_vive_1_5
    # pModelr[].rVertexData      = Ptr{Main.OpenVR.RenderModel_Vertex_t} @0x00007fec3411eea0
    # pModelr[].unVertexCount    = 12199
    # pModelr[].rIndexData       = Ptr{UInt16} @0x000043ae00007fec
    # pModelr[].unTriangleCount  = 0
    # pModelr[].diffuseTextureId = 300

    # pModelr = unsafe_pointer_to_objref(pModel[]) # NO!
    # pModelr = pModel
    pModelr = Ref(unsafe_load(pModel[]))
    pTexture = Ref{Ptr{OpenVR.RenderModel_TextureMap_t}}();
    while ( true )
      @GC.preserve pModelr err = OpenVR.LoadTexture_Async( vrrendermodels, pModelr[].diffuseTextureId, pTexture );
      if ( err != OpenVR.VRRenderModelError_Loading )
        break;
      end
      sleep( 1e-3 );
    end
    println("done")

    # Unable to load render texture id:300 for render model vr_controller_vive_1_5
    # renderModel = `vr_controller_vive_1_5`
    # pModel->diffuseTextureId = 0
    if ( err != OpenVR.VRRenderModelError_None )
      println( "Unable to load render texture id:$(pModelr[].diffuseTextureId) for render model $(pchRenderModelName)");
      OpenVR.FreeRenderModel( vrrendermodels, pModelr );
      return Ptr{CGLRenderModel}(C_NULL); # move on to the next tracked device
    end

    println("== init pRenderModelr ==")
    pRenderModelr = Ref(CGLRenderModel(pchRenderModelName))
    # @mem pRenderModelr[].m_glVertBuffer = 0
    # @mem pRenderModelr[].m_glIndexBuffer = 0
    # @mem pRenderModelr[].m_glVertArray = 0
    # @mem pRenderModelr[].m_glTexture = 0
    # @mem pRenderModelr[].m_unVertexCount = 0
    # @mem pRenderModelr[].m_sModelName = OpenVR.std_string(C_NULL,0,0,0)
    # OpenVR.setJuliaStringTostdstring(pchRenderModelName,@voidptr pRenderModelr[].m_sModelName)
    # pRenderModelr[].m_sModelName = pchRenderModelName
    # @mem pRenderModelr[].m_sModelNameJ = pchRenderModelName
    # if ( ~OpenVR.BInit(pRenderModelr2, pModelr[], unsafe_load(pTexture[]) ) )
    if ( ~BInit(pRenderModelr, pModelr[], unsafe_load(pTexture[]) ) )
      println( "Unable to create GL model from render model $(pchRenderModelName)" );
      # delete pRenderModelr;
      pRenderModelr = Ptr{CGLRenderModel}(C_NULL);
      pRenderModel = reinterpret(Ptr{CGLRenderModel},pointer_from_objref(pRenderModelr))
    else
      # pRenderModelptr = unsafe_load(reinterpret(Ptr{CGLRenderModel},pointer_from_objref(Ref(pRenderModelr))))
      println("pRenderModelr = ")
      display(pRenderModelr)
      pRenderModelptr = unsafe_load(reinterpret(Ptr{Ptr{CGLRenderModel}},pointer_from_objref(pRenderModelr)))
      push!(this.m_vecRenderModels, pRenderModelptr );
      push!(this.m_vecRenderModelsr, pRenderModelr );
      pRenderModel = pRenderModelptr
    end
    println("== FreeRenderModel ==")
    OpenVR.FreeRenderModel(vrrendermodels, pModelr );
    println("== FreeTexture ==")
    OpenVR.FreeTexture(vrrendermodels, pTexture[] );
    # pRenderModel = pRenderModelr
  end
  return pRenderModel;
end

function HandleInput(app::CMainApplication) :: Bool
  buf = zeros(UInt8,56);

  bRet = false;

  while ( @GC.preserve buf SDL.PollEvent( pointer(buf) ) != 0 ) # WARNING: the object backing the pointer might get garbage collected. We need to prevent that manually (here it is the case)
    event_type = unsafe_load(reinterpret(Ptr{UInt32},pointer(buf)))
    # unsafe_wrap(Array,reinterpret(Ptr{UInt32},pointer(buf)),(1,); own=false)[1]
    println("event_type = $(SDLText[event_type]) $(event_type)")
    if ( event_type == SDL.QUIT )
      bRet = true;
    elseif ( event_type == SDL.KEYDOWN )
      local sdlEvent = unsafe_load(reinterpret(Ptr{SDL.event_type_to_event[SDL.KEYDOWN]},pointer(buf)))
      if ( sdlEvent.keysym.sym == SDL.SDLK_ESCAPE
           || sdlEvent.keysym.sym == SDL.SDLK_q )
        bRet = true;
      end
      if ( sdlEvent.keysym.sym == SDL.SDLK_c )
        this.m_bShowCubes = !this.m_bShowCubes;
      end
    end
  end

  # Process SteamVR events
  event = Ref{OpenVR.VREvent_t}();
  m_pHMD = unsafe_load(convert(Ptr{Main.OpenVR.IVRSystemRef},pointer_from_objref(Ref(this.m_pHMD)))) # TODO
  while ( OpenVR.PollNextEvent(m_pHMD, event, sizeof( event ) ) )
    ProcessVREvent( event[] );
  end

  # Process SteamVR action state
  # UpdateActionState is called each frame to update the state of the actions themselves. The application
  # controls which action sets are active with the provided array of VRActiveActionSet_t structs.
  actionSet = Ref(OpenVR.VRActiveActionSet_t(0,0,0,0,0))
  @mem actionSet[].ulActionSet = this.m_actionsetDemo;
  vrinput = OpenVR.VRInput()
  OpenVR.UpdateActionState(vrinput, actionSet, sizeof(actionSet), 1 );

  # m_actionHideCubesRef = unsafe_wrap(Array,convert(Ptr{UInt64},fieldpointer(this,:m_actionHideCubes)),(1,);own=false)
  # this.m_bShowCubes = ~OpenVR.GetDigitalActionState( this.m_actionHideCubes , Ptr{UInt64}(C_NULL) );
  this.m_bShowCubes = ~GetDigitalActionState( this.m_actionHideCubes , Ptr{UInt64}(C_NULL) );

  Left = 0 # TODO: CxxWrap.jl enum to Uint
  Right = 1 # TODO: CxxWrap.jl enum to Uint

  ulHapticDevice = Ref{OpenVR.VRInputValueHandle_t}();
  if ( GetDigitalActionRisingEdge( this.m_actionTriggerHaptic, convert(Ptr{UInt64},pointer_from_objref(ulHapticDevice) )) )
    if ( ulHapticDevice[] == this.m_rHand[Left+1].m_source )
      OpenVR.TriggerHapticVibrationAction(vrinput, this.m_rHand[Left+1].m_actionHaptic, 0f0, 1f0, 4.0f0, 1.0f0, OpenVR.k_ulInvalidInputValueHandle );
    end
    if ( ulHapticDevice[] == this.m_rHand[Right+1].m_source )
      OpenVR.TriggerHapticVibrationAction(vrinput, this.m_rHand[Right+1].m_actionHaptic, 0f0, 1f0, 4.0f0, 1.0f0, OpenVR.k_ulInvalidInputValueHandle );
    end
  end

  analogData = Ref{OpenVR.InputAnalogActionData_t}();
  if ( OpenVR.GetAnalogActionData(vrinput, this.m_actionAnalongInput, analogData, sizeof( analogData ), OpenVR.k_ulInvalidInputValueHandle ) == OpenVR.VRInputError_None && analogData[].bActive )
    @mem this.m_vAnalogValue[0+1] = analogData[].x;
    @mem this.m_vAnalogValue[1+1] = analogData[].y;
  end

  @yolo this.m_rHand[Left+1].m_bShowController = true
  @yolo this.m_rHand[Right+1].m_bShowController = true

  ulHideDevice = Ref{OpenVR.VRInputValueHandle_t}();
  # if ( @GC.preserve ulHideDevice OpenVR.GetDigitalActionState( this.m_actionHideThisController, reinterpret(Ptr{UInt64},pointer_from_objref(ulHideDevice)) ) )
  if ( GetDigitalActionState( this.m_actionHideThisController, reinterpret(Ptr{UInt64},pointer_from_objref(ulHideDevice)) ) )
    if ( ulHideDevice[] == this.m_rHand[Left+1].m_source )
      @yolo this.m_rHand[Left+1].m_bShowController = false;
    end
    if ( ulHideDevice[] == this.m_rHand[Right+1].m_source )
      @yolo this.m_rHand[Right+1].m_bShowController = false;
    end
  end

  for eHand = Left:Right
    poseData = Ref{OpenVR.InputPoseActionData_t}();
    ret_code = OpenVR.GetPoseActionData(vrinput, this.m_rHand[eHand+1].m_actionPose, OpenVR.TrackingUniverseStanding, 0.0f0, poseData, sizeof( poseData ), OpenVR.k_ulInvalidInputValueHandle )
    if ( ret_code != OpenVR.VRInputError_None
      || ~poseData[].bActive || ~poseData[].pose.bPoseIsValid )
      @yolo this.m_rHand[eHand+1].m_bShowController = false;
    else
      @yolo this.m_rHand[eHand+1].m_rmat4Pose = ConvertSteamVRMatrixToMatrix4(poseData[].pose.mDeviceToAbsoluteTracking);

      originInfo = Ref{OpenVR.InputOriginInfo_t}();
      if ( OpenVR.GetOriginTrackedDeviceInfo(vrinput, poseData[].activeOrigin, originInfo, sizeof( originInfo ) ) == OpenVR.VRInputError_None
        && originInfo[].trackedDeviceIndex != OpenVR.k_unTrackedDeviceIndexInvalid )
        # sRenderModelName = OpenVR.GetTrackedDeviceString( originInfo[].trackedDeviceIndex, OpenVR.Prop_RenderModelName_String , C_NULL );
        sRenderModelName = GetTrackedDeviceString(originInfo[].trackedDeviceIndex, OpenVR.Prop_RenderModelName_String)
        # m_sRenderModelName = OpenVR.stdstringToJuliaString(@voidptr this.m_rHand[eHand+1].m_sRenderModelName) # TODO
        m_sRenderModelName = this.m_rHand[eHand+1].m_sRenderModelName
        if ( sRenderModelName != m_sRenderModelName )
          # @yolo this.m_rHand[eHand+1].m_pRenderModel = OpenVR.FindOrLoadRenderModel(app, sRenderModelName ).cpp_object;
          # @yolo this.m_rHand[eHand+1].m_pRenderModel = FindOrLoadRenderModel(app, sRenderModelName ).cpp_object;
          @yolo this.m_rHand[eHand+1].m_pRenderModel = FindOrLoadRenderModel(app, sRenderModelName );
          # OpenVR.setJuliaStringTostdstring(sRenderModelName,@voidptr this.m_rHand[eHand+1].m_sRenderModelName) # TODO
          @yolo this.m_rHand[eHand+1].m_sRenderModelName = sRenderModelName
        end
      end
    end
  end

  return bRet;
end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function Shutdown(app :: CMainApplication)
  if ( this.m_pHMD != C_NULL )
    OpenVR.VR_Shutdown();
    this.m_pHMD = C_NULL;
  end

  # for( std::vector< CGLRenderModel * >::iterator i = m_vecRenderModels.begin(); i != m_vecRenderModels.end(); i++ )
  #   delete (*i); # Julia GC!
  # end
  # m_vecRenderModels.clear(); # Julia GC!

  if ( this.m_pContext != C_NULL )
    if ( this.m_bDebugOpenGL )
      glDebugMessageControl( GL_DONT_CARE, GL_DONT_CARE, GL_DONT_CARE, 0, nullptr, GL_FALSE );
      glDebugMessageCallback(C_NULL, C_NULL);
    end
    m_glSceneVertBufferptr = @ptr this.m_glSceneVertBuffer
    glDeleteBuffers(1, m_glSceneVertBufferptr);

    if ( this.m_unSceneProgramID != 0 )
      glDeleteProgram( this.m_unSceneProgramID );
    end
    if ( this.m_unControllerTransformProgramID != 0 )
      glDeleteProgram( this.m_unControllerTransformProgramID );
    end
    if ( this.m_unRenderModelProgramID != 0 )
      glDeleteProgram( this.m_unRenderModelProgramID );
    end
    if ( this.m_unCompanionWindowProgramID != 0 )
      glDeleteProgram( this.m_unCompanionWindowProgramID );
    end

    glDeleteRenderbuffers( 1, (@ptr this.leftEyeDesc.m_nDepthBufferId ));
    glDeleteTextures( 1, (@ptr this.leftEyeDesc.m_nRenderTextureId ));
    glDeleteFramebuffers( 1, (@ptr this.leftEyeDesc.m_nRenderFramebufferId ));
    glDeleteTextures( 1, (@ptr this.leftEyeDesc.m_nResolveTextureId ));
    glDeleteFramebuffers( 1, (@ptr this.leftEyeDesc.m_nResolveFramebufferId ));

    glDeleteRenderbuffers( 1, (@ptr this.rightEyeDesc.m_nDepthBufferId ));
    glDeleteTextures( 1, (@ptr this.rightEyeDesc.m_nRenderTextureId ));
    glDeleteFramebuffers( 1, (@ptr this.rightEyeDesc.m_nRenderFramebufferId ));
    glDeleteTextures( 1, (@ptr this.rightEyeDesc.m_nResolveTextureId ));
    glDeleteFramebuffers( 1, (@ptr this.rightEyeDesc.m_nResolveFramebufferId ));

    if ( this.m_unCompanionWindowVAO != 0 )
      glDeleteVertexArrays( 1, (@ptr this.m_unCompanionWindowVAO) );
    end
    if ( this.m_unSceneVAO != 0 )
      glDeleteVertexArrays( 1, (@ptr this.m_unSceneVAO) );
    end
    if ( this.m_unControllerVAO != 0 )
      glDeleteVertexArrays( 1, (@ptr this.m_unControllerVAO) );
    end
  end

  if ( this.m_pCompanionWindow != C_NULL )
    SDL.DestroyWindow(this.m_pCompanionWindow);
    this.m_pCompanionWindow = C_NULL;
  end

  SDL.Quit();
end

function RunMainLoop(app :: CMainApplication)
    bQuit = false;

    # OpenVR.SDL_StartTextInput();
    SDL.StartTextInput();
    # OpenVR.SDL_ShowCursor( SDL.DISABLE );
    SDL.ShowCursor( Int32(SDL.DISABLE) );

    while ~bQuit
      # bQuit = OpenVR.HandleInput(app);
      bQuit = HandleInput(app);
      # OpenVR.RenderFrame(app);
      RenderFrame(app)
    end

    # OpenVR.SDL_StopTextInput();
    SDL.StopTextInput();
end


# -----------------------------------------------------------------------------
#  Purpose: Compiles a GL shader program and returns the handle. Returns 0 if
#       the shader couldn't be compiled for some reason.
# -----------------------------------------------------------------------------
function CompileGLShader( pchShaderName::String, pchVertexShader::String, pchFragmentShader::String )::GLuint
  unProgramID = glCreateProgram();

  nSceneVertexShader = glCreateShader(GL_VERTEX_SHADER);
  glShaderSource( nSceneVertexShader, pchVertexShader);
  glCompileShader( nSceneVertexShader );

  vShaderCompiled = Ref(GL_FALSE);
  @GC.preserve vShaderCompiled glGetShaderiv( nSceneVertexShader, GL_COMPILE_STATUS, @ptr vShaderCompiled);
  if ( vShaderCompiled[] != GL_TRUE)
    println(pchShaderName, " - Unable to compile vertex shader ", nSceneVertexShader);
    glDeleteProgram( unProgramID );
    glDeleteShader( nSceneVertexShader );
    return 0;
  end
  glAttachShader( unProgramID, nSceneVertexShader);
  glDeleteShader( nSceneVertexShader ); # the program hangs onto this once it's attached

  nSceneFragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
  glShaderSource( nSceneFragmentShader, pchFragmentShader);
  glCompileShader( nSceneFragmentShader );

  fShaderCompiled = Ref(GL_FALSE);
  @GC.preserve fShaderCompiled glGetShaderiv( nSceneFragmentShader, GL_COMPILE_STATUS, @ptr fShaderCompiled);
  if (fShaderCompiled[] != GL_TRUE)
    println(pchShaderName, " - Unable to compile fragment shader ", nSceneFragmentShader );
    glDeleteProgram( unProgramID );
    glDeleteShader( nSceneFragmentShader );
    return 0;
  end

  glAttachShader( unProgramID, nSceneFragmentShader );
  glDeleteShader( nSceneFragmentShader ); # the program hangs onto this once it's attached

  glLinkProgram( unProgramID );

  programSuccess = Ref(GL_TRUE);
  @GC.preserve programSuccess glGetProgramiv( unProgramID, GL_LINK_STATUS, @ptr programSuccess);
  if ( programSuccess[] != GL_TRUE )
    println(pchShaderName, " - Error linking program ", unProgramID);
    glDeleteProgram( unProgramID );
    return 0;
  end

  glUseProgram( unProgramID );
  glUseProgram( 0 );

  return unProgramID;
end

# -----------------------------------------------------------------------------
#  Purpose: Creates all the shaders used by HelloVR SDL
# -----------------------------------------------------------------------------
function CreateAllShaders(app :: CMainApplication)::Bool
  this.m_unSceneProgramID = CompileGLShader(
    "Scene",

    # Vertex Shader
    """#version 410
    uniform mat4 matrix;
    layout(location = 0) in vec4 position;
    layout(location = 1) in vec2 v2UVcoordsIn;
    layout(location = 2) in vec3 v3NormalIn;
    out vec2 v2UVcoords;
    void main()
    {
      v2UVcoords = v2UVcoordsIn;
      gl_Position = matrix * position;
    }
    """,

    # Fragment Shader
    """#version 410 core
    uniform sampler2D mytexture;
    in vec2 v2UVcoords;
    out vec4 outputColor;
    void main()
    {
       outputColor = texture(mytexture, v2UVcoords);
    }
    """
    );
  this.m_nSceneMatrixLocation = glGetUniformLocation( this.m_unSceneProgramID, "matrix" );
  if ( this.m_nSceneMatrixLocation == -1 )
    println( "Unable to find matrix uniform in scene shader" );
    return false;
  end

  this.m_unControllerTransformProgramID = CompileGLShader(
    "Controller",

    # vertex shader
    """#version 410
    uniform mat4 matrix;
    layout(location = 0) in vec4 position;
    layout(location = 1) in vec3 v3ColorIn;
    out vec4 v4Color;
    void main()
    {
      v4Color.xyz = v3ColorIn; v4Color.a = 1.0;
      gl_Position = matrix * position;
    }
    """,

    # fragment shader
    """#version 410
    in vec4 v4Color;
    out vec4 outputColor;
    void main()
    {
       outputColor = v4Color;
    }
    """
    );
  this.m_nControllerMatrixLocation = glGetUniformLocation( this.m_unControllerTransformProgramID, "matrix" );
  if ( this.m_nControllerMatrixLocation == -1 )
    println( "Unable to find matrix uniform in controller shader" );
    return false;
  end

  this.m_unRenderModelProgramID = CompileGLShader(
    "render model",

    # vertex shader
    """#version 410
    uniform mat4 matrix;
    layout(location = 0) in vec4 position;
    layout(location = 1) in vec3 v3NormalIn;
    layout(location = 2) in vec2 v2TexCoordsIn;
    out vec2 v2TexCoord;
    void main()
    {
      v2TexCoord = v2TexCoordsIn;
      gl_Position = matrix * vec4(position.xyz, 1);
    }
    """,

    #fragment shader
    """#version 410 core
    uniform sampler2D diffuse;
    in vec2 v2TexCoord;
    out vec4 outputColor;
    void main()
    {
       outputColor = texture( diffuse, v2TexCoord);
    }
    """

    );
  this.m_nRenderModelMatrixLocation = glGetUniformLocation( this.m_unRenderModelProgramID, "matrix" );
  if ( this.m_nRenderModelMatrixLocation == -1 )
    println( "Unable to find matrix uniform in render model shader" );
    return false;
  end

  this.m_unCompanionWindowProgramID = CompileGLShader(
    "CompanionWindow",

    # vertex shader
    """#version 410 core
    layout(location = 0) in vec4 position;
    layout(location = 1) in vec2 v2UVIn;
    noperspective out vec2 v2UV;
    void main()
    {
      v2UV = v2UVIn;
      gl_Position = position;
    }
    """,

    # fragment shader
    """#version 410 core
    uniform sampler2D mytexture;
    noperspective in vec2 v2UV;
    out vec4 outputColor;
    void main()
    {
        outputColor = texture(mytexture, v2UV);
    }
    """
    );

  return (this.m_unSceneProgramID != 0
    && this.m_unControllerTransformProgramID != 0
    && this.m_unRenderModelProgramID != 0
    && this.m_unCompanionWindowProgramID != 0);
end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function SetupTexturemaps(app :: CMainApplication)::Bool
  # std::string sWorkingDirectory = Path_StripFilename( Path_GetWorkingDirectory() );
  # std::string strFullPath = Path_MakeAbsolute( "../cube_texture.png", sWorkingDirectory );

  imageRGB = Array{ColorTypes.RGB{FixedPointNumbers.Normed{UInt8,8}},2}[]; # NOTE: we load RGB, where lodepng::decode loads RGBA
  # unsigned nError = lodepng::decode( imageRGBA, nImageWidth, nImageHeight, strFullPath.c_str() );
  nError = 0
  nImageWidth, nImageHeight = 0, 0
  try
    imageRGB = load(strFullPath);
    nImageWidth, nImageHeight = size(imageRGB)
  catch e
    println(e)
    nError = 1
  end

  if ( nError != 0 )
    return false;
  end

  glGenTextures(1, @ptr this.m_iTexture );
  glBindTexture( GL_TEXTURE_2D, this.m_iTexture );

  glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, nImageWidth, nImageHeight,
    0, GL_RGB, GL_UNSIGNED_BYTE, imageRGB );

  glGenerateMipmap(GL_TEXTURE_2D);

  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
  glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR );

  fLargest = Ref{GLfloat}();
  glGetFloatv(GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT, fLargest);
  glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAX_ANISOTROPY_EXT, fLargest[]);

  glBindTexture( GL_TEXTURE_2D, 0 );

  return ( this.m_iTexture != 0 );
end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function AddCubeVertex( fl0::Float32, fl1::Float32, fl2::Float32, fl3::Float32, fl4::Float32, vertdata::Array{Float32,1})
  push!(vertdata, fl0 );
  push!(vertdata, fl1 );
  push!(vertdata, fl2 );
  push!(vertdata, fl3 );
  push!(vertdata, fl4 );
end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function AddCubeToScene( mat::Matrix4, vertdata::Array{Float32,1} )
  #  Matrix4 mat( outermat.data() );

  A = mat.m * [ 0, 0, 0, 1 ];
  B = mat.m * [ 1, 0, 0, 1 ];
  C = mat.m * [ 1, 1, 0, 1 ];
  D = mat.m * [ 0, 1, 0, 1 ];
  E = mat.m * [ 0, 0, 1, 1 ];
  F = mat.m * [ 1, 0, 1, 1 ];
  G = mat.m * [ 1, 1, 1, 1 ];
  H = mat.m * [ 0, 1, 1, 1 ];

  #  triangles instead of quads
  AddCubeVertex( E[1], E[2], E[3], 0f0, 1f0, vertdata ); # Front
  AddCubeVertex( F[1], F[2], F[3], 1f0, 1f0, vertdata );
  AddCubeVertex( G[1], G[2], G[3], 1f0, 0f0, vertdata );
  AddCubeVertex( G[1], G[2], G[3], 1f0, 0f0, vertdata );
  AddCubeVertex( H[1], H[2], H[3], 0f0, 0f0, vertdata );
  AddCubeVertex( E[1], E[2], E[3], 0f0, 1f0, vertdata );

  AddCubeVertex( B[1], B[2], B[3], 0f0, 1f0, vertdata ); # Back
  AddCubeVertex( A[1], A[2], A[3], 1f0, 1f0, vertdata );
  AddCubeVertex( D[1], D[2], D[3], 1f0, 0f0, vertdata );
  AddCubeVertex( D[1], D[2], D[3], 1f0, 0f0, vertdata );
  AddCubeVertex( C[1], C[2], C[3], 0f0, 0f0, vertdata );
  AddCubeVertex( B[1], B[2], B[3], 0f0, 1f0, vertdata );

  AddCubeVertex( H[1], H[2], H[3], 0f0, 1f0, vertdata ); # Top
  AddCubeVertex( G[1], G[2], G[3], 1f0, 1f0, vertdata );
  AddCubeVertex( C[1], C[2], C[3], 1f0, 0f0, vertdata );
  AddCubeVertex( C[1], C[2], C[3], 1f0, 0f0, vertdata );
  AddCubeVertex( D[1], D[2], D[3], 0f0, 0f0, vertdata );
  AddCubeVertex( H[1], H[2], H[3], 0f0, 1f0, vertdata );

  AddCubeVertex( A[1], A[2], A[3], 0f0, 1f0, vertdata ); # Bottom
  AddCubeVertex( B[1], B[2], B[3], 1f0, 1f0, vertdata );
  AddCubeVertex( F[1], F[2], F[3], 1f0, 0f0, vertdata );
  AddCubeVertex( F[1], F[2], F[3], 1f0, 0f0, vertdata );
  AddCubeVertex( E[1], E[2], E[3], 0f0, 0f0, vertdata );
  AddCubeVertex( A[1], A[2], A[3], 0f0, 1f0, vertdata );

  AddCubeVertex( A[1], A[2], A[3], 0f0, 1f0, vertdata ); # Left
  AddCubeVertex( E[1], E[2], E[3], 1f0, 1f0, vertdata );
  AddCubeVertex( H[1], H[2], H[3], 1f0, 0f0, vertdata );
  AddCubeVertex( H[1], H[2], H[3], 1f0, 0f0, vertdata );
  AddCubeVertex( D[1], D[2], D[3], 0f0, 0f0, vertdata );
  AddCubeVertex( A[1], A[2], A[3], 0f0, 1f0, vertdata );

  AddCubeVertex( F[1], F[2], F[3], 0f0, 1f0, vertdata ); # Right
  AddCubeVertex( B[1], B[2], B[3], 1f0, 1f0, vertdata );
  AddCubeVertex( C[1], C[2], C[3], 1f0, 0f0, vertdata );
  AddCubeVertex( C[1], C[2], C[3], 1f0, 0f0, vertdata );
  AddCubeVertex( G[1], G[2], G[3], 0f0, 0f0, vertdata );
  AddCubeVertex( F[1], F[2], F[3], 0f0, 1f0, vertdata );
end

scale(    mat::Matrix4,x::Float32,y::Float32,z::Float32)::Matrix4 = Matrix4(         vcat(map(i -> transpose(mat.m[i,:].*[x,y,z,1][i]),1:4)...),mat.tm)
translate(mat::Matrix4,x::Float32,y::Float32,z::Float32)::Matrix4 = Matrix4(mat.m .+ vcat(map(i -> transpose(mat.m[4,:].*[x,y,z,0][i]),1:4)...),mat.tm)

# -----------------------------------------------------------------------------
#  Purpose: create a sea of cubes
# -----------------------------------------------------------------------------
function SetupScene(app :: CMainApplication)
  if ( this.m_pHMD == C_NULL )
    return;
  end

  vertdataarray = Float32[];

  ID = Matrix4(Matrix{Float32}(I,4,4),zeros(4,4))

  matScale = ID
  matScale = scale(matScale, this.m_fScale, this.m_fScale, this.m_fScale );
  matTransform = ID
  matTransform = translate(matTransform,
    -( Float32(this.m_iSceneVolumeWidth) * this.m_fScaleSpacing ) / 2.f0,
    -( Float32(this.m_iSceneVolumeHeight) * this.m_fScaleSpacing ) / 2.f0,
    -( Float32(this.m_iSceneVolumeDepth) * this.m_fScaleSpacing ) / 2.f0)

  mat = Matrix4(matScale.m * matTransform.m, zeros(4,4));

  for z = 0:this.m_iSceneVolumeDepth-1
    for y = 0:this.m_iSceneVolumeHeight-1
      for x = 0:this.m_iSceneVolumeWidth-1
        AddCubeToScene( mat, vertdataarray );
        mat = Matrix4(mat.m * translate(ID, this.m_fScaleSpacing, 0f0, 0f0 ).m, zeros(4,4));
      end
      mat = Matrix4(mat.m * translate(ID, -(Float32(this.m_iSceneVolumeWidth)) * this.m_fScaleSpacing, this.m_fScaleSpacing, 0f0 ).m, zeros(4,4));
    end
    mat = Matrix4(mat.m * translate(ID, 0f0, -(Float32(this.m_iSceneVolumeHeight)) * this.m_fScaleSpacing, this.m_fScaleSpacing ).m, zeros(4,4));
  end
  this.m_uiVertcount = length(vertdataarray)/5;

  glGenVertexArrays( 1, @ptr this.m_unSceneVAO );
  glBindVertexArray( this.m_unSceneVAO );

  glGenBuffers( 1, @ptr this.m_glSceneVertBuffer );
  glBindBuffer( GL_ARRAY_BUFFER, this.m_glSceneVertBuffer );
  glBufferData( GL_ARRAY_BUFFER, sizeof(Float32) * length(vertdataarray), vertdataarray, GL_STATIC_DRAW);

  stride = GLsizei(sizeof(VertexDataScene));
  offset = C_NULL;

  glEnableVertexAttribArray( 0 );
  glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, stride , offset);

  offset += 3*sizeof(Float32) # sizeof(OpenVR.Vector3);
  glEnableVertexAttribArray( 1 );
  glVertexAttribPointer( 1, 2, GL_FLOAT, GL_FALSE, stride, offset);

  glBindVertexArray( 0 );
  glDisableVertexAttribArray(0);
  glDisableVertexAttribArray(1);

end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function SetupCameras(app :: CMainApplication)
  # m_mat4ProjectionLeft = OpenVR.GetHMDMatrixProjectionEye(app, OpenVR.Eye_Left ); # TODO
  # @mem this.m_mat4ProjectionLeft = unsafe_load(reinterpret(Ptr{Matrix4},m_mat4ProjectionLeft.cpp_object))
  @mem this.m_mat4ProjectionLeft = GetHMDMatrixProjectionEye(app, OpenVR.Eye_Left );
  # m_mat4ProjectionRight = OpenVR.GetHMDMatrixProjectionEye(app, OpenVR.Eye_Right ); # TODO
  # @mem this.m_mat4ProjectionRight = unsafe_load(reinterpret(Ptr{Matrix4},m_mat4ProjectionRight.cpp_object))
  @mem this.m_mat4ProjectionRight = GetHMDMatrixProjectionEye(app, OpenVR.Eye_Right );
  # m_mat4eyePosLeft = OpenVR.GetHMDMatrixPoseEye(app, OpenVR.Eye_Left ); # TODO
  # @mem this.m_mat4eyePosLeft = unsafe_load(reinterpret(Ptr{Matrix4},m_mat4eyePosLeft.cpp_object))
  @mem this.m_mat4eyePosLeft = GetHMDMatrixPoseEye(app, OpenVR.Eye_Left );
  # m_mat4eyePosRight = OpenVR.GetHMDMatrixPoseEye(app, OpenVR.Eye_Right ); # TODO
  # @mem this.m_mat4eyePosRight = unsafe_load(reinterpret(Ptr{Matrix4},m_mat4eyePosRight.cpp_object))
  @mem this.m_mat4eyePosRight = GetHMDMatrixPoseEye(app, OpenVR.Eye_Right );
end

# -----------------------------------------------------------------------------
#  Purpose: Creates a frame buffer. Returns true if the buffer was set up.
#           Returns false if the setup failed.
# -----------------------------------------------------------------------------
function CreateFrameBuffer( nWidth::Int32, nHeight::Int32, framebufferDescp::Ptr{FramebufferDesc} )::Bool
  # here we unsafe_load an (immutable) bitstype "into" a RefValue, mutate it from within (OpenGL-)C via pointers and then unsafe_store! it back into the given pointer
  # TODO: if we'd support dereferencing in MemoryMutate.jl this could be just
  #  @ptr framebufferDesc->m_nRenderFramebufferId
  framebufferDesc = Ref(unsafe_load(framebufferDescp))

  glGenFramebuffers(1, @ptr framebufferDesc[].m_nRenderFramebufferId );
  glBindFramebuffer(GL_FRAMEBUFFER, framebufferDesc[].m_nRenderFramebufferId);

  glGenRenderbuffers(1, @ptr framebufferDesc[].m_nDepthBufferId);
  glBindRenderbuffer(GL_RENDERBUFFER, framebufferDesc[].m_nDepthBufferId);
  glRenderbufferStorageMultisample(GL_RENDERBUFFER, 4, GL_DEPTH_COMPONENT, nWidth, nHeight );
  glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER,  framebufferDesc[].m_nDepthBufferId );

  glGenTextures(1, @ptr framebufferDesc[].m_nRenderTextureId );
  glBindTexture(GL_TEXTURE_2D_MULTISAMPLE, framebufferDesc[].m_nRenderTextureId );
  glTexImage2DMultisample(GL_TEXTURE_2D_MULTISAMPLE, 4, GL_RGBA8, nWidth, nHeight, true);
  glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D_MULTISAMPLE, framebufferDesc[].m_nRenderTextureId, 0);

  glGenFramebuffers(1, @ptr framebufferDesc[].m_nResolveFramebufferId );
  glBindFramebuffer(GL_FRAMEBUFFER, framebufferDesc[].m_nResolveFramebufferId);

  glGenTextures(1, @ptr framebufferDesc[].m_nResolveTextureId );
  glBindTexture(GL_TEXTURE_2D, framebufferDesc[].m_nResolveTextureId );
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAX_LEVEL, 0);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, nWidth, nHeight, 0, GL_RGBA, GL_UNSIGNED_BYTE, C_NULL);
  glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, framebufferDesc[].m_nResolveTextureId, 0);

  unsafe_store!(framebufferDescp,framebufferDesc[]) # TODO see above

  # check FBO status
  status = glCheckFramebufferStatus(GL_FRAMEBUFFER);
  if (status != GL_FRAMEBUFFER_COMPLETE)
    return false;
  end

  glBindFramebuffer( GL_FRAMEBUFFER, 0 );

  return true;
end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function SetupStereoRenderTargets(app :: CMainApplication)::Bool
  if ( this.m_pHMD == C_NULL )
    return false;
  end

  vrsystem = OpenVR.VRSystem() # TODO: the original uses m_pHMD, which currently is a Ptr{Nothing}; so we might use OpenVR.IVRSystemRef and replace all "this.m_pHMD == C_NULL" with the CxxWrap provided "isnull(this.m_pHMD)"
  OpenVR.GetRecommendedRenderTargetSize(vrsystem, (@typedptr UInt32 this.m_nRenderWidth), @typedptr UInt32 this.m_nRenderHeight );

  CreateFrameBuffer(this.m_nRenderWidth, this.m_nRenderHeight, @ptr this.leftEyeDesc );
  CreateFrameBuffer(this.m_nRenderWidth, this.m_nRenderHeight, @ptr this.rightEyeDesc );

  return true;
end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function SetupCompanionWindow(app :: CMainApplication)
  if ( this.m_pHMD == C_NULL )
    return;
  end

  vVerts = VertexDataWindow[]

  # left eye verts
  push!(vVerts, VertexDataWindow( [-1, -1], [0, 1] ) );
  push!(vVerts, VertexDataWindow( [0, -1], [1, 1] ) );
  push!(vVerts, VertexDataWindow( [-1, 1], [0, 0] ) );
  push!(vVerts, VertexDataWindow( [0, 1], [1, 0] ) );

  # right eye verts
  push!(vVerts, VertexDataWindow( [0, -1], [0, 1] ) );
  push!(vVerts, VertexDataWindow( [1, -1], [1, 1] ) );
  push!(vVerts, VertexDataWindow( [0, 1], [0, 0] ) );
  push!(vVerts, VertexDataWindow( [1, 1], [1, 0] ) );

  vIndices = GLushort[ 0, 1, 3,   0, 3, 2,   4, 5, 7,   4, 7, 6];
  this.m_uiCompanionWindowIndexSize = length(vIndices);

  glGenVertexArrays( 1, @ptr this.m_unCompanionWindowVAO );
  glBindVertexArray( this.m_unCompanionWindowVAO );

  glGenBuffers( 1, @ptr this.m_glCompanionWindowIDVertBuffer );
  glBindBuffer( GL_ARRAY_BUFFER, this.m_glCompanionWindowIDVertBuffer );
  glBufferData( GL_ARRAY_BUFFER, length(vVerts)*sizeof(VertexDataWindow), vVerts, GL_STATIC_DRAW );

  glGenBuffers( 1, @ptr this.m_glCompanionWindowIDIndexBuffer );
  glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, this.m_glCompanionWindowIDIndexBuffer );
  glBufferData( GL_ELEMENT_ARRAY_BUFFER, this.m_uiCompanionWindowIndexSize*sizeof(GLushort), vIndices, GL_STATIC_DRAW );

  glEnableVertexAttribArray( 0 );
  glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(VertexDataWindow), Ptr{Nothing}(fieldoffset( VertexDataWindow, :position )) );

  glEnableVertexAttribArray( 1 );
  glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(VertexDataWindow), Ptr{Nothing}(fieldoffset( VertexDataWindow, :texCoord )) );

  glBindVertexArray( 0 );

  glDisableVertexAttribArray(0);
  glDisableVertexAttribArray(1);

  glBindBuffer(GL_ARRAY_BUFFER, 0);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
end


# -----------------------------------------------------------------------------
#  Purpose: Initialize OpenGL. Returns true if OpenGL has been successfully
#           initialized, false if shaders could not be created.
#           If failure occurred in a module other than shaders, the function
#           may return true or throw an error.
# -----------------------------------------------------------------------------
function BInitGL(app :: CMainApplication)::Bool
  if ( this.m_bDebugOpenGL )
    # glDebugMessageCallback( (GLDEBUGPROC)DebugCallback, nullptr); # TODO
    glDebugMessageControl( GL_DONT_CARE, GL_DONT_CARE, GL_DONT_CARE, 0, C_NULL, GL_TRUE );
    glEnable(GL_DEBUG_OUTPUT_SYNCHRONOUS);
  end

  if ( ~CreateAllShaders(app) )
    return false;
  end

  SetupTexturemaps(app);
  SetupScene(app);
  SetupCameras(app);
  SetupStereoRenderTargets(app);
  SetupCompanionWindow(app);

  return true;
end


# -----------------------------------------------------------------------------
#  Purpose: Initialize Compositor. Returns true if the compositor was
#           successfully initialized, false otherwise.
# -----------------------------------------------------------------------------
function BInitCompositor(app :: CMainApplication)::Bool
  peError = OpenVR.VRInitError_None;

  if ( OpenVR.VRCompositor().cpp_object == C_NULL )
    println( "Compositor initialization failed. See log file for details\n" );
    return false;
  end

  return true;
end

# -----------------------------------------------------------------------------
#  Purpose:
# -----------------------------------------------------------------------------
function BInit(app :: CMainApplication)::Bool
  if ( SDL.Init( SDL.INIT_VIDEO | SDL.INIT_TIMER ) < 0 )
    println("BInit - SDL could not initialize! SDL Error: ", SDL.GetError());
    return false;
  end

  # Loading the SteamVR Runtime
  eError = Ref(OpenVR.VRInitError_None);
  m_pHMD = OpenVR.VR_Init( eError, OpenVR.VRApplication_Scene , ""); # the last parameter, pStartupInfo, is reserved for future use.
  this.m_pHMD = m_pHMD.cpp_object

  if ( eError[] != OpenVR.VRInitError_None )
    this.m_pHMD = C_NULL;
    # char buf[1024];
    # sprintf_s( buf, sizeof( buf ), "Unable to init VR runtime: %s", OpenVR.VR_GetVRInitErrorAsEnglishDescription( eError ) );
    # SDL.ShowSimpleMessageBox( SDL.MESSAGEBOX_ERROR, "VR_Init Failed", buf, C_NULL );
    SDL.ShowSimpleMessageBox( SDL.MESSAGEBOX_ERROR, "VR_Init Failed", "TODO: VR_GetVRInitErrorAsEnglishDescription", C_NULL ); # TODO
    return false;
  end


  nWindowPosX = Int32(700);
  nWindowPosY = Int32(100);
  unWindowFlags = SDL.WINDOW_OPENGL | SDL.WINDOW_SHOWN;

  SDL.GL_SetAttribute( SDL.GL_CONTEXT_MAJOR_VERSION, 4 );
  SDL.GL_SetAttribute( SDL.GL_CONTEXT_MINOR_VERSION, 1 );
  #SDL.GL_SetAttribute( SDL.GL_CONTEXT_PROFILE_MASK, SDL.GL_CONTEXT_PROFILE_COMPATIBILITY );
  SDL.GL_SetAttribute( SDL.GL_CONTEXT_PROFILE_MASK, SDL.GL_CONTEXT_PROFILE_CORE );

  SDL.GL_SetAttribute( SDL.GL_MULTISAMPLEBUFFERS, 0 );
  SDL.GL_SetAttribute( SDL.GL_MULTISAMPLESAMPLES, 0 );
  if ( this.m_bDebugOpenGL )
    SDL.GL_SetAttribute( SDL.GL_CONTEXT_FLAGS, SDL.GL_CONTEXT_DEBUG_FLAG );
  end

  # SDL.SetHint(SDL.HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR, "1"); # defaults to "1" anyway?

  this.m_pCompanionWindow = SDL.CreateWindow( "hellovr", nWindowPosX, nWindowPosY, this.m_nCompanionWindowWidth, this.m_nCompanionWindowHeight, unWindowFlags );
  if (this.m_pCompanionWindow == C_NULL)
    println( "BInit - Window could not be created! SDL Error: ", SDL.GetError() );
    return false;
  end

  this.m_pContext = SDL.GL_CreateContext(this.m_pCompanionWindow);
  if (this.m_pContext == C_NULL)
    println( "BInit - OpenGL context could not be created! SDL Error: ", SDL.GetError() );
    return false;
  end

  # # NOTE: this seems to work without GLEW apparently
  # OpenVR.setglewExperimental(UInt8(GL_TRUE)); # TODO
  # nGlewError = OpenVR.glewInit(); # TODO
  # if (nGlewError != GLEW_OK)
  #   printf( "BInit - Error initializing GLEW! ", OpenVR.glewGetErrorString( nGlewError ) ); # TODO
  #   return false;
  # end
  glGetError(); # to clear the error caused deep in GLEW

  if ( SDL.GL_SetSwapInterval( Int32(this.m_bVblank ? 1 : 0) ) < 0 )
    printf( "BInit - Warning: Unable to set VSync! SDL Error: ", SDL.GetError() );
    return false;
  end

  this.m_strDriver = "No Driver";
  # OpenVR.setJuliaStringTostdstring(m_strDriver,@voidptr this.m_strDriver) # TODO
  this.m_strDisplay = "No Display";
  # OpenVR.setJuliaStringTostdstring(m_strDisplay,@voidptr this.m_strDisplay) # TODO

  this.m_strDriver = GetTrackedDeviceString( OpenVR.k_unTrackedDeviceIndex_Hmd, OpenVR.Prop_TrackingSystemName_String );
  # OpenVR.setJuliaStringTostdstring(m_strDriver,@voidptr this.m_strDriver) # TODO
  this.m_strDisplay = GetTrackedDeviceString( OpenVR.k_unTrackedDeviceIndex_Hmd, OpenVR.Prop_SerialNumber_String );
  # OpenVR.setJuliaStringTostdstring(m_strDisplay,@voidptr this.m_strDisplay) # TODO

  strWindowTitle = "hellovr - " * this.m_strDriver * " " * this.m_strDisplay;
  SDL.SetWindowTitle( this.m_pCompanionWindow, strWindowTitle );

  # cube array
   this.m_iSceneVolumeWidth = this.m_iSceneVolumeInit;
   this.m_iSceneVolumeHeight = this.m_iSceneVolumeInit;
   this.m_iSceneVolumeDepth = this.m_iSceneVolumeInit;

   this.m_fScale = 0.3f0;
   this.m_fScaleSpacing = 4.0f0;

   this.m_fNearClip = 0.1f0;
   this.m_fFarClip = 30.0f0;

   this.m_iTexture = 0;
   this.m_uiVertcount = 0;

#     m_MillisecondsTimer.start(1, this);
#     m_SecondsTimer.start(1000, this);

  if (~BInitGL(app))
    println("BInit - Unable to initialize OpenGL!");
    return false;
  end

  if (~BInitCompositor(app))
    printf("BInit - Failed to initialize VR Compositor!");
    return false;
  end

  # OpenVR.VRInput()->SetActionManifestPath( Path_MakeAbsolute( "../hellovr_actions.json", Path_StripFilename( Path_GetExecutablePath() ) ).c_str() );
  println("SetActionManifestPath of $ActionManifestPath");
  vrinput = OpenVR.VRInput()
  OpenVR.SetActionManifestPath(vrinput, ActionManifestPath );

  OpenVR.GetActionHandle(vrinput, "/actions/demo/in/HideCubes", @ptr this.m_actionHideCubes);
  OpenVR.GetActionHandle(vrinput, "/actions/demo/in/HideThisController", @ptr this.m_actionHideThisController);
  OpenVR.GetActionHandle(vrinput, "/actions/demo/in/TriggerHaptic", @ptr this.m_actionTriggerHaptic);
  OpenVR.GetActionHandle(vrinput, "/actions/demo/in/AnalogInput", @ptr this.m_actionAnalongInput);

  OpenVR.GetActionSetHandle(vrinput, "/actions/demo", @ptr this.m_actionsetDemo);

  Left = 0 # TODO
  Right = 1 # TODO

  OpenVR.GetActionHandle(vrinput, "/actions/demo/out/Haptic_Left", @ptr this.m_rHand[Left+1].m_actionHaptic);
  OpenVR.GetInputSourceHandle(vrinput, "/user/hand/left", @ptr this.m_rHand[Left+1].m_source);
  OpenVR.GetActionHandle(vrinput, "/actions/demo/in/Hand_Left", @ptr this.m_rHand[Left+1].m_actionPose);

  OpenVR.GetActionHandle(vrinput, "/actions/demo/out/Haptic_Right", @ptr this.m_rHand[Right+1].m_actionHaptic);
  OpenVR.GetInputSourceHandle(vrinput, "/user/hand/right", @ptr this.m_rHand[Right+1].m_source);
  OpenVR.GetActionHandle(vrinput, "/actions/demo/in/Hand_Right", @ptr this.m_rHand[Right+1].m_actionPose);

  return true;
end

if BInit(jMainApplication)
  # OpenVR.RunMainLoop(jMainApplication)

  vrsystem = OpenVR.VRSystem()
  println("TrackingSystemName                      = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_TrackingSystemName_String))")
  println("SerialNumber                            = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_SerialNumber_String))")
  println("ModelNumber                             = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_ModelNumber_String))")
  println("RenderModelName                         = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_RenderModelName_String))")
  println("ManufacturerName                        = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_ManufacturerName_String))")
  println("TrackingFirmwareVersion                 = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_TrackingFirmwareVersion_String))")
  println("HardwareRevision                        = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_HardwareRevision_String))")
  println("AllWirelessDongleDescriptions           = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_AllWirelessDongleDescriptions_String))")
  println("ConnectedWirelessDongle                 = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_ConnectedWirelessDongle_String))")
  println("Firmware_ManualUpdateURL                = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_Firmware_ManualUpdateURL_String))")
  println("Firmware_ProgrammingTarget              = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_Firmware_ProgrammingTarget_String))")
  println("DriverVersion                           = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_DriverVersion_String))")
  println("ResourceRoot                            = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_ResourceRoot_String))")
  println("RegisteredDeviceType                    = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_RegisteredDeviceType_String))")
  println("InputProfilePath                        = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_InputProfilePath_String))")
  println("AdditionalDeviceSettingsPath            = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_AdditionalDeviceSettingsPath_String))")
  println("DisplayMCImageLeft                      = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_DisplayMCImageLeft_String))")
  println("DisplayMCImageRight                     = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_DisplayMCImageRight_String))")
  println("DisplayGCImage                          = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_DisplayGCImage_String))")
  println("CameraFirmwareDescription               = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_CameraFirmwareDescription_String))")
  println("DriverProvidedChaperonePath             = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_DriverProvidedChaperonePath_String))")
  println("NamedIconPathControllerLeftDeviceOff    = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_NamedIconPathControllerLeftDeviceOff_String))")
  println("NamedIconPathControllerRightDeviceOff   = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_NamedIconPathControllerRightDeviceOff_String))")
  println("NamedIconPathTrackingReferenceDeviceOff = $(OpenVR.GetStringTrackedDeviceProperty(vrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_NamedIconPathTrackingReferenceDeviceOff_String))")

  RunMainLoop(jMainApplication)
end
Shutdown(jMainApplication)

# OpenVR.HandleInput(jMainApplication)
# RenderFrame(jMainApplication)
# RenderFrame(jMainApplication)
# RenderFrame(jMainApplication)
