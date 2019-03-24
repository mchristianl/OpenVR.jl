module OpenVR
  const openvr_version = "1.2.10"
  const openvr_dirname = "openvr-$openvr_version"
  const module_dir = dirname(dirname(@__FILE__))
  const src_dir = joinpath(module_dir,"src")
  const openvr_dir = joinpath(module_dir,"deps",openvr_dirname)
  const os_dir_and_so_ext = begin
    local os_dirname = "unknown"
    local os_so_extension = ""
    Sys.islinux()   &&                        (os_dirname = "linux64"; os_so_extension=".so")
    Sys.isapple()   &&                        (os_dirname = "osx32"  ; os_so_extension=".dylib")
    Sys.iswindows() && Sys.ARCH == :x86_32 && (os_dirname = "win32"  ; os_so_extension=".dll")
    Sys.iswindows() && Sys.ARCH == :x86_64 && (os_dirname = "win64"  ; os_so_extension=".dll")
    (os_dirname, os_so_extension)
  end
  const openvr_bin_dir = joinpath(openvr_dir,"lib",os_dir_and_so_ext[1])
  const stage1_path = joinpath(openvr_bin_dir,"libvrstage1$(os_dir_and_so_ext[2])")
  const stage2_path = joinpath(openvr_bin_dir,"libvrstage2$(os_dir_and_so_ext[2])")

  using ModernGL

  module VR_enums
    using CxxWrap
    # @wrapmodule(joinpath("/home/christianl/src/openvr/samples/bin/linux64","libhellovr_preamble"))

    # https://stackoverflow.com/questions/32518131/reference-function-of-outer-module
    import ...OpenVR: stage1_path
    @wrapmodule(stage1_path)

    function __init__()
      @initcxx
    end
  end

  for n in names(VR_enums; all=true, imported=false) # skip `#eval` and `#include`
    startswith(string(n),"__cxxwrap") && continue
    # skip `#eval` and `#include` etc.
    n ∈ [:eval, :include, :__init__, :VR_enums, Symbol("#include"), Symbol("#eval"), Symbol("#__init__")] && continue
    Core.eval(@__MODULE__,:(const $n = VR_enums.$n))
  end

  const ETrackedPropertyErrorRef = Ref{ETrackedPropertyError}

  const UInt8Ptr = Ptr{UInt8}

  # const VR0 = VR_enums
  # include("openvr/hellovr_opengl_julia/vrstructs.jl")
  include(joinpath(src_dir,"vrstructs.jl"))
  # include("openvr/hellovr_opengl_julia/HelloVRstructs.jl")

  # create Ref{T} and Ptr{T}, since we cannot use these names directly from the C++ shared library
  for n in names(@__MODULE__; all=true, imported=false)
    T = getfield(@__MODULE__,n)
    # only DataTypes
    typeof(T) != DataType && continue
    # only those which were defined in this module (by checking their prefix)
    Tname = string(T.name)
    Mname = occursin(".",Tname) ? split(Tname,".")[end-1] : ""
    (Mname == String(nameof(@__MODULE__)) || Mname == String(nameof(VR_enums))) || continue
    # skip `#eval` and `#include`
    n ∈ [Symbol("#include"), Symbol("#eval")] && continue
    # build expression
    refname = Symbol(String(n)*"Ref")
    # ptrname = Symbol(String(n)*"Ptr")
    refexpr = :(const $refname = Ref{$T})
    # ptrexpr = :(const $ptrname = Ptr{$T})
    Core.eval(@__MODULE__,refexpr)
    # display(n)
    # Core.eval(@__MODULE__,ptrexpr)
    # TODO: check all field-types on their bitstypeness
    #   if any, then the layout is guaranteed to not match
    ~isbitstype(T) && println("WARNING $(nameof(T)) is NOT a bitstype anymore. The memory layout might not match what C/C++ expects.")
  end

  const RenderModel_tPtrRef = Ref{Ptr{RenderModel_t}} # TODO: figure out how T** template should work
  const RenderModel_TextureMap_tPtrRef = Ref{Ptr{RenderModel_TextureMap_t}}

  struct FramebufferDesc
    m_nDepthBufferId :: GLuint
    m_nRenderTextureId :: GLuint
    m_nRenderFramebufferId :: GLuint
    m_nResolveTextureId :: GLuint
    m_nResolveFramebufferId :: GLuint
  end

  using CxxWrap
  # @wrapmodule(joinpath("/home/christianl/src/openvr/samples/bin/linux64","libhellovr_julia"))
  # CxxWrap.wrapmodule(joinpath("/home/christianl/src/openvr/samples/bin/linux64","libhellovr_julia"),:define_julia_module,@__MODULE__)
  CxxWrap.wrapmodule(stage2_path,:define_julia_module,@__MODULE__)
  # const module_functions = CxxWrap.get_module_functions(@__MODULE__)

  # ptr(x :: T) where T = reinterpret(Ptr{T},pointer_from_objref(x))
  # nulltpr(T) = reinterpret(Ptr{T},C_NULL)

  mkRefOrPtr(x::Ptr{Nothing},::Val{Ref{U}}) where U = reinterpret(Ptr{U},x)
  mkRefOrPtr(x::U,::Val{U}) where U = x
  mkRefOrPtr(x,::Val) = Ref(x) # ptr(x)

  # overload for each function that takes a bitstype, allocates it with Ref and passes it as such
  for f ∈ filter(f -> any(T -> T <: Ref && ~(T <: Ptr), f.argument_types), CxxWrap.get_module_functions(@__MODULE__))
    argtypes = f.argument_types
    argsymbols = map((i) -> Symbol(:arg,i[1]), enumerate(argtypes))

    # this makes the smart pointer type union, taken from CxxWrap.build_function_expression
    function map_julia_arg_type_named(fname, t)
      if fname ∈ CxxWrap.__excluded_names
        return t
      end
      return CxxWrap.map_julia_arg_type(t)
    end

    # fname = mod === nothing ? f.name : (f.name,mod) # TODO: multi-module support?
    fname = CxxWrap.process_fname(f.name) # matches on constructors and other functions (and different modules, but that is to be done)
    args = [map_julia_arg_type_named(f.name, t) for t in f.argument_types]
    newargs = [T <: Ref ? :($arg)           : :($arg :: $T) for (arg,T) in  zip(argsymbols,args)]
    wraps   = [T <: Ref ? :(mkRefOrPtr($arg,Val($T))) : :($arg)       for (arg,T) in  zip(argsymbols,args)]
    expr = :($fname($(newargs...))::$(f.return_type)=$fname($(wraps...)))
    Core.eval(@__MODULE__,expr)
  end

  function getUnion(y::VROverlayIntersectionMaskPrimitive_t)
    off = fieldoffset(VROverlayIntersectionMaskPrimitive_t,2)
    x = Ref(y)
    @GC.preserve x begin
    	x.m_nPrimitiveType == OverlayIntersectionPrimitiveType_Rectangle && return @GC.preserve x unsafe_load(reinterpret(Ptr{IntersectionMaskRectangle_t},pointer_from_objref(x)+off))
    	x.m_nPrimitiveType == OverlayIntersectionPrimitiveType_Circle    && return @GC.preserve x unsafe_load(reinterpret(Ptr{IntersectionMaskCircle_t}   ,pointer_from_objref(x)+off))
    end
  	nothing
  end

  function getUnion(y::VREvent_t)
    x = Ref(y)
    off = fieldoffset(VREvent_t,4)

    # this is reconstructed from the openvr.h comments
    (( t == VREvent_ButtonPress
    || t == VREvent_ButtonUnpress
    || t == VREvent_ButtonTouch
    || t == VREvent_ButtonUntouch
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_Controller_t}, pointer_from_objref(x) + off))
    (( t == VREvent_DualAnalog_Press
    || t == VREvent_DualAnalog_Unpress
    || t == VREvent_DualAnalog_Touch
    || t == VREvent_DualAnalog_Untouch
    || t == VREvent_DualAnalog_Move
    || t == VREvent_DualAnalog_ModeSwitch1
    || t == VREvent_DualAnalog_ModeSwitch2
    || t == VREvent_DualAnalog_Cancel
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_DualAnalog_t}, pointer_from_objref(x) + off))
    (( t == VREvent_MouseMove
    || t == VREvent_MouseButtonDown
    || t == VREvent_MouseButtonUp
    || t == VREvent_TouchPadMove
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_Mouse_t}, pointer_from_objref(x) + off))
    (( t == VREvent_FocusEnter
    || t == VREvent_FocusLeave
    || t == VREvent_OverlayFocusChanged
    || t == VREvent_DashboardThumbSelected
    || t == VREvent_DashboardRequested
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_Overlay_t}, pointer_from_objref(x) + off))
    (( t == VREvent_ScrollDiscrete
    || t == VREvent_ScrollSmooth
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_Scroll_t}, pointer_from_objref(x) + off))
    (( t == VREvent_InputFocusCaptured
    || t == VREvent_InputFocusReleased
    || t == VREvent_SceneFocusLost
    || t == VREvent_SceneFocusGained
    || t == VREvent_SceneApplicationChanged
    || t == VREvent_SceneFocusChanged
    || t == VREvent_InputFocusChanged
    || t == VREvent_SceneApplicationSecondaryRenderingStarted
    || t == VREvent_SceneApplicationUsingWrongGraphicsAdapter
    || t == VREvent_ActionBindingReloaded
    || t == VREvent_Quit
    || t == VREvent_ProcessQuit
    || t == VREvent_QuitAborted_UserPrompt
    || t == VREvent_QuitAcknowledged
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_Process_t}, pointer_from_objref(x) + off))
    (( t == VREvent_RenderToast
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_Notification_t}, pointer_from_objref(x) + off))
    (( t == VREvent_ShowUI
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_ShowUI_t}, pointer_from_objref(x) + off))
    (( t == VREvent_Input_HapticVibration
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_HapticVibration_t}, pointer_from_objref(x) + off))
    (( t == VREvent_Input_BindingLoadFailed
    || t == VREvent_Input_BindingLoadSuccessful
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_InputBindingLoad_t}, pointer_from_objref(x) + off))
    (( t == VREvent_Input_ActionManifestLoadFailed
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_InputActionManifestLoad_t}, pointer_from_objref(x) + off))
    (( t == VREvent_Input_ProgressUpdate
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_ProgressUpdate_t}, pointer_from_objref(x) + off))
    (( t == VREvent_SpatialAnchors_PoseUpdated
    || t == VREvent_SpatialAnchors_DescriptorUpdated
    || t == VREvent_SpatialAnchors_RequestPoseUpdate
    || t == VREvent_SpatialAnchors_RequestDescriptorUpdate
    )) && return @GC.preserve x unsafe_load(reinterpret(Ptr{VREvent_SpatialAnchor_t}, pointer_from_objref(x) + off))

    # ?? VREvent_Reserved_t reserved;
    # ?? VREvent_Status_t status;
    # ?? VREvent_Keyboard_t keyboard;
    # ?? VREvent_Ipd_t ipd;
    # ?? VREvent_Chaperone_t chaperone;
    # ?? VREvent_PerformanceTest_t performanceTest;
    # ?? VREvent_TouchPadMove_t touchPadMove;
    # ?? VREvent_SeatedZeroPoseReset_t seatedZeroPoseReset;
    # ?? VREvent_Screenshot_t screenshot;
    # ?? VREvent_ScreenshotProgress_t screenshotProgress;
    # ?? VREvent_ApplicationLaunch_t applicationLaunch;
    # ?? VREvent_EditingCameraSurface_t cameraSurface;
    # ?? VREvent_MessageOverlay_t messageOverlay;
    # ?? VREvent_Property_t property;
    # ?? VREvent_WebConsole_t webConsole;
  end

  function GetStringTrackedDeviceProperty(vrsystem,deviceindex,prop)::String
    err = TrackedProp_Success
    len = GetStringTrackedDeviceProperty(vrsystem,deviceindex,prop,Cstring(C_NULL),0,err)
    buf = Array{UInt8,1}(undef,len)
    GetStringTrackedDeviceProperty(vrsystem,deviceindex,prop,Cstring(pointer(buf)),len,err)
    err != TrackedProp_Success && println("Warning: GetStringTrackedDeviceProperty failed with error $(err)")
    return unsafe_string(pointer(buf))
  end

  function __init__()
    @initcxx
  end
end
