using StaticArrays
using ModernGL
using SimpleDirectMediaLayer
const SDL = SimpleDirectMediaLayer

################################################################################

struct Matrix4 # NOTE: this is already colymn-major, as in Julia
  m  :: SArray{Tuple{4,4},Float32,2,4*4}
  tm :: SArray{Tuple{4,4},Float32,2,4*4}
end
struct CGLRenderModel
  m_glVertBuffer :: GLuint
  m_glIndexBuffer :: GLuint
  m_glVertArray :: GLuint
  m_glTexture :: GLuint
  m_unVertexCount :: GLsizei
  m_sModelName :: String
  CGLRenderModel() = new(0,0,0,0,0,"")
  CGLRenderModel(str::String) = new(0,0,0,0,0,str)
end
struct ControllerInfo_t
  m_source :: UInt64
  m_actionPose :: UInt64
  m_actionHaptic :: UInt64
  m_rmat4Pose :: Matrix4
  m_pRenderModel ::Ptr{CGLRenderModel}
  m_sRenderModelName :: String
  m_bShowController :: Bool
  ControllerInfo_t() = new(0,0,0,Matrix4(Matrix{Float32}(I,4,4),zeros(4,4)),C_NULL,"",false)
end
struct VertexDataScene
  position :: SVector{3,Float32}
  texCoord :: SVector{2,Float32}
end
struct VertexDataWindow
  position :: SVector{2,Float32}
  texCoord :: SVector{2,Float32}
end
struct FramebufferDesc
  m_nDepthBufferId :: GLuint
  m_nRenderTextureId :: GLuint
  m_nRenderFramebufferId :: GLuint
  m_nResolveTextureId :: GLuint
  m_nResolveFramebufferId :: GLuint
end
mutable struct CMainApplication # this as immutable leads to horrible compilation times
  vtable                           :: Ptr{Nothing}
  m_bDebugOpenGL                   :: Bool
  m_bVerbose                       :: Bool
  m_bPerf                          :: Bool
  m_bVblank                        :: Bool
  m_bGlFinishHack                  :: Bool
  m_pHMD                           :: Ptr{Nothing} # vr::IVRSystem
  m_strDriver                      :: String # std::string
  m_strDisplay                     :: String # std::string
  m_rTrackedDevicePose             :: SVector{64,OpenVR.TrackedDevicePose_t}
  m_rmat4DevicePose                :: SVector{64,Matrix4}
  m_rHand                          :: SVector{2,ControllerInfo_t}
  m_pCompanionWindow               :: Ptr{Nothing} # SDL_Window *
  m_nCompanionWindowWidth          :: Int32
  m_nCompanionWindowHeight         :: Int32
  m_pContext                       :: SDL.GLContext
  m_iTrackedControllerCount        :: Int32
  m_iTrackedControllerCount_Last   :: Int32
  m_iValidPoseCount                :: Int32
  m_iValidPoseCount_Last           :: Int32
  m_bShowCubes                     :: Bool
  m_vAnalogValue                   :: SVector{2,Float32}
  m_strPoseClasses                 :: String # std::string
  m_rDevClassChar                  :: SVector{64,Cchar} # k_unMaxTrackedDeviceCount
  m_iSceneVolumeWidth              :: Int32
  m_iSceneVolumeHeight             :: Int32
  m_iSceneVolumeDepth              :: Int32
  m_fScaleSpacing                  :: Float32
  m_fScale                         :: Float32
  m_iSceneVolumeInit               :: Int32
  m_fNearClip                      :: Float32
  m_fFarClip                       :: Float32
  m_iTexture                       :: GLuint
  m_uiVertcount                    :: UInt32
  m_glSceneVertBuffer              :: GLuint
  m_unSceneVAO                     :: GLuint
  m_unCompanionWindowVAO           :: GLuint
  m_glCompanionWindowIDVertBuffer  :: GLuint
  m_glCompanionWindowIDIndexBuffer :: GLuint
  m_uiCompanionWindowIndexSize     :: UInt32
  m_glControllerVertBuffer         :: GLuint
  m_unControllerVAO                :: GLuint
  m_uiControllerVertcount          :: UInt32
  m_mat4HMDPose                    :: Matrix4
  m_mat4eyePosLeft                 :: Matrix4
  m_mat4eyePosRight                :: Matrix4
  m_mat4ProjectionCenter           :: Matrix4
  m_mat4ProjectionLeft             :: Matrix4
  m_mat4ProjectionRight            :: Matrix4
  m_unSceneProgramID               :: GLuint
  m_unCompanionWindowProgramID     :: GLuint
  m_unControllerTransformProgramID :: GLuint
  m_unRenderModelProgramID         :: GLuint
  m_nSceneMatrixLocation           :: GLint
  m_nControllerMatrixLocation      :: GLint
  m_nRenderModelMatrixLocation     :: GLint
  leftEyeDesc                      :: FramebufferDesc
  rightEyeDesc                     :: FramebufferDesc
  m_nRenderWidth                   :: Int32
  m_nRenderHeight                  :: Int32
  m_vecRenderModels                :: Array{Ptr{CGLRenderModel},1} # std::vector< CGLRenderModel * >
  m_vecRenderModelsr               :: Array{Ref{CGLRenderModel},1} # std::vector< CGLRenderModel * >
  m_actionHideCubes                :: UInt64
  m_actionHideThisController       :: UInt64
  m_actionTriggerHaptic            :: UInt64
  m_actionAnalongInput             :: UInt64
  m_actionsetDemo                  :: UInt64
  CMainApplication() = new()
end
