using StaticArrays

# OpenVR uses something like "hungarian notation"
#   https://en.wikipedia.org/wiki/Hungarian_notation
# the german Wikipedia has more complete tables about that
#  https://de.wikipedia.org/wiki/Ungarische_Notation

# opaque pointers / forward declarations from openVR0.h:27
const VkDevice_T = Nothing
const VkPhysicalDevice_T = Nothing
const VkInstance_T = Nothing
const VkQueue_T = Nothing
const ID3D12Resource = Nothing
const ID3D12CommandQueue = Nothing

# pointer_from_objref cannot be used on immutable objects

# TODO: the SArray needs to be
#   SArray{Tuple{N₁,…,Nₙ},Int64,n,N₁*…*Nₙ}
# e.g.
#   SArray{Tuple{4},Int64,1,4}
#   SArray{Tuple{4,3},Int64,2,4*3}
#   SArray{Tuple{5,4,3},Int64,3,5*4*3}
# TODO: all these need to be immutable structs, that are _safely allocated_ when Ref is used they are not assumed to be constant anymore

# NOTE: https://en.wikipedia.org/wiki/Row-_and_column-major_order#Programming_languages_and_libraries
#  Row-major order is used in C/C++/Objective-C (for C-style arrays), PL/I, Pascal, Speakeasy, SAS, and Rasdaman.
#  Column-major order is used in Fortran, MATLAB, GNU Octave, S-Plus, R, Julia, and Scilab.

# clang-query -c="set output dump" -c="set bind-root false" -c=" match decl(eachOf(cxxRecordDecl(allOf(isExpansionInMainFile(),isStruct(),hasDefinition())).bind(\"r\"),recordDecl(allOf(isExpansionInMainFile(),isStruct(),forEach(fieldDecl().bind(\"f\")))),typedefDecl(isExpansionInMainFile()).bind(\"t\")))" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | sed -r "s/[[:cntrl:]]\[([0-9]{1,3};)*[0-9]{1,3}m//g" | grep -E "^CXXRecordDecl|^FieldDecl|^TypedefDecl" | sed -e "s/^FieldDecl.* \([^ ]\+\) '\([^']\+\)'.*/  \1 :: \2/" -e "s/^CXXRecordDecl.* \([^ ]\+\) definition/struct \1/" -e"s/^TypedefDecl.* \([^ ]\+\) 'union \(.\+\)'$/# const \1 = Union{\2} # NOTE: C unions are not supported in Julia/" -e "s/^TypedefDecl.* \([^ ]\+\) '\([^']\+\)'.*/const \1 = \2/" -e "s/vr:://" -e "s/float/Float32/" -e "s/double/Float64/" -e "s/char/Cchar/" -e "s/uint\([^ ]*\)_t/UInt\1/" -e "s/int\([^ ]*\)_t/Int\1/" -e "s/bool/Bool/" -e "s/\(const\)\{0,1\} *void \*/ Ptr{Nothing}/" -e "s/\(const\)\{0,1\} *\([^ ]\+\) \*/Ptr{\2}/" -e "s/ \([^ ]\+\) \[\(.*\)\]/ SArray{Tuple{\2},\1}/" -e "s/\(Tuple{.*\)\]\[\(.*}\)/\1,\2/" -e "s/\(Tuple{.*\)\]\[\(.*}\)/\1,\2/" | sed -e ":0;/^ /b1;p;z;N;s/^\n//;b0;:1;/^[^ ]/{i\\" -e "end" -e ";b0};p;z;N;s/^\n//;b1"

const SpatialAnchorHandle_t = UInt32
const glSharedTextureHandle_t = Ptr{Nothing}
const glInt_t = Int32
const glUInt_t = UInt32
struct HmdMatrix34_t
  m :: SArray{Tuple{4,3},Float32,2,3*4} # NOTE: C is row-major, Julia is column-major
end
struct HmdMatrix33_t
  m :: SArray{Tuple{3,3},Float32,2,3*3} # NOTE: C is row-major, Julia is column-major
end
struct HmdMatrix44_t
  m :: SArray{Tuple{4,4},Float32,2,4*4} # NOTE: C is row-major, Julia is column-major
end
struct HmdVector3_t
  v :: SArray{Tuple{3},Float32,1,3}
end
struct HmdVector4_t
  v :: SArray{Tuple{4},Float32,1,4}
end
struct HmdVector3d_t
  v :: SArray{Tuple{3},Float64,1,3}
end
struct HmdVector2_t
  v :: SArray{Tuple{2},Float32,1,2}
end
struct HmdQuaternion_t
  w :: Float64
  x :: Float64
  y :: Float64
  z :: Float64
end
struct HmdQuaternionf_t
  w :: Float32
  x :: Float32
  y :: Float32
  z :: Float32
end
struct HmdColor_t
  r :: Float32
  g :: Float32
  b :: Float32
  a :: Float32
end
struct HmdQuad_t
  vCorners :: SArray{Tuple{4},HmdVector3_t,1,4}
end
struct HmdRect2_t
  vTopLeft :: HmdVector2_t
  vBottomRight :: HmdVector2_t
end
struct DistortionCoordinates_t
  rfRed :: SArray{Tuple{2},Float32,1,2}
  rfGreen :: SArray{Tuple{2},Float32,1,2}
  rfBlue :: SArray{Tuple{2},Float32,1,2}
end
struct Texture_t
  handle :: Ptr{Nothing}
  eType :: ETextureType
  eColorSpace :: EColorSpace
end
const SharedTextureHandle_t = UInt64
const DriverId_t = UInt32
const TrackedDeviceIndex_t = UInt32
struct TrackedDevicePose_t
  mDeviceToAbsoluteTracking :: HmdMatrix34_t
  vVelocity :: HmdVector3_t
  vAngularVelocity :: HmdVector3_t
  eTrackingResult :: ETrackingResult
  bPoseIsValid :: Bool
  bDeviceIsConnected :: Bool
end
const WebConsoleHandle_t = UInt64
const PropertyContainerHandle_t = UInt64
const PropertyTypeTag_t = UInt32
const DriverHandle_t = PropertyContainerHandle_t
const VRActionHandle_t = UInt64
const VRActionSetHandle_t = UInt64
const VRInputValueHandle_t = UInt64
struct VRTextureBounds_t
  uMin :: Float32
  vMin :: Float32
  uMax :: Float32
  vMax :: Float32
end
struct VRTextureWithPose_t
  mDeviceToAbsoluteTracking :: HmdMatrix34_t
end
struct VRTextureDepthInfo_t
  handle :: Ptr{Nothing}
  mProjection :: HmdMatrix44_t
  vRange :: HmdVector2_t
end
struct VRTextureWithDepth_t
  depth :: VRTextureDepthInfo_t
end
struct VRTextureWithPoseAndDepth_t
  depth :: VRTextureDepthInfo_t
end
struct VRVulkanTextureData_t
  m_nImage :: UInt64
  m_pDevice ::Ptr{VkDevice_T}
  m_pPhysicalDevice ::Ptr{VkPhysicalDevice_T}
  m_pInstance ::Ptr{VkInstance_T}
  m_pQueue ::Ptr{VkQueue_T}
  m_nQueueFamilyIndex :: UInt32
  m_nWidth :: UInt32
  m_nHeight :: UInt32
  m_nFormat :: UInt32
  m_nSampleCount :: UInt32
end
struct D3D12TextureData_t
  m_pResource ::Ptr{ID3D12Resource}
  m_pCommandQueue ::Ptr{ID3D12CommandQueue}
  m_nNodeMask :: UInt32
end
struct VREvent_Controller_t
  button :: UInt32
end
struct VREvent_Mouse_t
  x :: Float32
  y :: Float32
  button :: UInt32
end
struct VREvent_Scroll_t
  xdelta :: Float32
  ydelta :: Float32
  repeatCount :: UInt32
end
struct VREvent_TouchPadMove_t
  bFingerDown :: Bool
  flSecondsFingerDown :: Float32
  fValueXFirst :: Float32
  fValueYFirst :: Float32
  fValueXRaw :: Float32
  fValueYRaw :: Float32
end
struct VREvent_Notification_t
  ulUserValue :: UInt64
  notificationId :: UInt32
end
struct VREvent_Process_t
  pid :: UInt32
  oldPid :: UInt32
  bForced :: Bool
  bConnectionLost :: Bool
end
struct VREvent_Overlay_t
  overlayHandle :: UInt64
  devicePath :: UInt64
end
struct VREvent_Status_t
  statusState :: UInt32
end
struct VREvent_Keyboard_t
  cNewInput :: SArray{Tuple{8},Cchar,1,8}
  uUserValue :: UInt64
end
struct VREvent_Ipd_t
  ipdMeters :: Float32
end
struct VREvent_Chaperone_t
  m_nPreviousUniverse :: UInt64
  m_nCurrentUniverse :: UInt64
end
struct VREvent_Reserved_t
  reserved0 :: UInt64
  reserved1 :: UInt64
  reserved2 :: UInt64
  reserved3 :: UInt64
  reserved4 :: UInt64
  reserved5 :: UInt64
end
struct VREvent_PerformanceTest_t
  m_nFidelityLevel :: UInt32
end
struct VREvent_SeatedZeroPoseReset_t
  bResetBySystemMenu :: Bool
end
struct VREvent_Screenshot_t
  handle :: UInt32
  type :: UInt32
end
struct VREvent_ScreenshotProgress_t
  progress :: Float32
end
struct VREvent_ApplicationLaunch_t
  pid :: UInt32
  unArgsHandle :: UInt32
end
struct VREvent_EditingCameraSurface_t
  overlayHandle :: UInt64
  nVisualMode :: UInt32
end
struct VREvent_MessageOverlay_t
  unVRMessageOverlayResponse :: UInt32
end
struct VREvent_Property_t
  container :: PropertyContainerHandle_t
  prop :: ETrackedDeviceProperty
end
struct VREvent_DualAnalog_t
  x :: Float32
  y :: Float32
  transformedX :: Float32
  transformedY :: Float32
  which :: EDualAnalogWhich
end
struct VREvent_HapticVibration_t
  containerHandle :: UInt64
  componentHandle :: UInt64
  fDurationSeconds :: Float32
  fFrequency :: Float32
  fAmplitude :: Float32
end
struct VREvent_WebConsole_t
  webConsoleHandle :: WebConsoleHandle_t
end
struct VREvent_InputBindingLoad_t
  ulAppContainer :: PropertyContainerHandle_t
  pathMessage :: UInt64
  pathUrl :: UInt64
  pathControllerType :: UInt64
end
struct VREvent_InputActionManifestLoad_t
  pathAppKey :: UInt64
  pathMessage :: UInt64
  pathMessageParam :: UInt64
  pathManifestPath :: UInt64
end
struct VREvent_SpatialAnchor_t
  unHandle :: SpatialAnchorHandle_t
end
struct VREvent_ProgressUpdate_t
  ulApplicationPropertyContainer :: UInt64
  pathDevice :: UInt64
  pathInputSource :: UInt64
  pathProgressAction :: UInt64
  pathIcon :: UInt64
  fProgress :: Float32
end
struct VREvent_ShowUI_t
  eType :: EShowUIType
end
# const VREvent_Data_t = Union{VREvent_Data_t':'VREvent_Data_t} # NOTE: C unions are not supported in Julia
struct VREvent_Data_t
  data :: NTuple{Int64(VREvent_Data_tLen),UInt8}
end
struct VREvent_t
  eventType :: UInt32
  trackedDeviceIndex :: TrackedDeviceIndex_t
  eventAgeSeconds :: Float32
  data :: VREvent_Data_t
end
struct HiddenAreaMesh_t
  pVertexData :: Ptr{HmdVector2_t}
  unTriangleCount :: UInt32
end
struct VRControllerAxis_t
  x :: Float32
  y :: Float32
end
struct VRControllerState001_t
  unPacketNum :: UInt32
  ulButtonPressed :: UInt64
  ulButtonTouched :: UInt64
  rAxis :: SArray{Tuple{5},VRControllerAxis_t,1,5}
end
const VRControllerState_t = VRControllerState001_t
struct Compositor_OverlaySettings
  size :: UInt32
  curved :: Bool
  antialias :: Bool
  scale :: Float32
  distance :: Float32
  alpha :: Float32
  uOffset :: Float32
  vOffset :: Float32
  uScale :: Float32
  vScale :: Float32
  gridDivs :: Float32
  gridWidth :: Float32
  gridScale :: Float32
  transform :: HmdMatrix44_t
end
const VROverlayHandle_t = UInt64
struct VRBoneTransform_t
  position :: HmdVector4_t
  orientation :: HmdQuaternionf_t
end
const BoneIndex_t = Int32
const TrackedCameraHandle_t = UInt64
struct CameraVideoStreamFrameHeader_t
  eFrameType :: EVRTrackedCameraFrameType
  nWidth :: UInt32
  nHeight :: UInt32
  nBytesPerPixel :: UInt32
  nFrameSequence :: UInt32
  standingTrackedDevicePose :: TrackedDevicePose_t
  ulFrameExposureTime :: UInt64
end
const ScreenshotHandle_t = UInt32
struct DriverDirectMode_FrameTiming
  m_nSize :: UInt32
  m_nNumFramePresents :: UInt32
  m_nNumMisPresented :: UInt32
  m_nNumDroppedFrames :: UInt32
  m_nReprojectionFlags :: UInt32
end
struct ImuSample_t
  fSampleTime :: Float64
  vAccel :: HmdVector3d_t
  vGyro :: HmdVector3d_t
  unOffScaleFlags :: UInt32
end
struct AppOverrideKeys_t
  pchKey :: Ptr{Cchar}
  pchValue :: Ptr{Cchar}
end
struct Compositor_FrameTiming
  m_nSize :: UInt32
  m_nFrameIndex :: UInt32
  m_nNumFramePresents :: UInt32
  m_nNumMisPresented :: UInt32
  m_nNumDroppedFrames :: UInt32
  m_nReprojectionFlags :: UInt32
  m_flSystemTimeInSeconds :: Float64
  m_flPreSubmitGpuMs :: Float32
  m_flPostSubmitGpuMs :: Float32
  m_flTotalRenderGpuMs :: Float32
  m_flCompositorRenderGpuMs :: Float32
  m_flCompositorRenderCpuMs :: Float32
  m_flCompositorIdleCpuMs :: Float32
  m_flClientFrameIntervalMs :: Float32
  m_flPresentCallCpuMs :: Float32
  m_flWaitForPresentCpuMs :: Float32
  m_flSubmitFrameMs :: Float32
  m_flWaitGetPosesCalledMs :: Float32
  m_flNewPosesReadyMs :: Float32
  m_flNewFrameReadyMs :: Float32
  m_flCompositorUpdateStartMs :: Float32
  m_flCompositorUpdateEndMs :: Float32
  m_flCompositorRenderStartMs :: Float32
  m_HmdPose :: TrackedDevicePose_t
  m_nNumVSyncsReadyForUse :: UInt32
  m_nNumVSyncsToFirstView :: UInt32
end
struct Compositor_CumulativeStats
  m_nPid :: UInt32
  m_nNumFramePresents :: UInt32
  m_nNumDroppedFrames :: UInt32
  m_nNumReprojectedFrames :: UInt32
  m_nNumFramePresentsOnStartup :: UInt32
  m_nNumDroppedFramesOnStartup :: UInt32
  m_nNumReprojectedFramesOnStartup :: UInt32
  m_nNumLoading :: UInt32
  m_nNumFramePresentsLoading :: UInt32
  m_nNumDroppedFramesLoading :: UInt32
  m_nNumReprojectedFramesLoading :: UInt32
  m_nNumTimedOut :: UInt32
  m_nNumFramePresentsTimedOut :: UInt32
  m_nNumDroppedFramesTimedOut :: UInt32
  m_nNumReprojectedFramesTimedOut :: UInt32
end
struct NotificationBitmap_t
  m_pImageData :: Ptr{Nothing}
  m_nWidth :: Int32
  m_nHeight :: Int32
  m_nBytesPerPixel :: Int32
end
const VRNotificationId = UInt32
struct VROverlayIntersectionParams_t
  vSource :: HmdVector3_t
  vDirection :: HmdVector3_t
  eOrigin :: ETrackingUniverseOrigin
end
struct VROverlayIntersectionResults_t
  vPoint :: HmdVector3_t
  vNormal :: HmdVector3_t
  vUVs :: HmdVector2_t
  fDistance :: Float32
end
struct IntersectionMaskRectangle_t
  m_flTopLeftX :: Float32
  m_flTopLeftY :: Float32
  m_flWidth :: Float32
  m_flHeight :: Float32
end
struct IntersectionMaskCircle_t
  m_flCenterX :: Float32
  m_flCenterY :: Float32
  m_flRadius :: Float32
end
# const VROverlayIntersectionMaskPrimitive_Data_t = Union{VROverlayIntersectionMaskPrimitive_Data_t':'VROverlayIntersectionMaskPrimitive_Data_t} # NOTE: C unions are not supported in Julia
struct VROverlayIntersectionMaskPrimitive_Data_t
  data :: NTuple{Int64(VROverlayIntersectionMaskPrimitive_Data_tLen),UInt8}
end
struct VROverlayIntersectionMaskPrimitive_t
  m_nPrimitiveType :: EVROverlayIntersectionMaskPrimitiveType
  m_Primitive :: VROverlayIntersectionMaskPrimitive_Data_t
end
const VRComponentProperties = UInt32
struct RenderModel_ComponentState_t
  mTrackingToComponentRenderModel :: HmdMatrix34_t
  mTrackingToComponentLocal :: HmdMatrix34_t
  uProperties :: VRComponentProperties
end
struct RenderModel_Vertex_t
  vPosition :: HmdVector3_t
  vNormal :: HmdVector3_t
  rfTextureCoord :: SArray{Tuple{2},Float32,1,2}
end
struct RenderModel_TextureMap_t
  unWidth :: UInt16
  unHeight :: UInt16
  rubTextureMapDataH :: UInt32 # Ptr{UInt8}
  rubTextureMapDataL :: UInt32 # Ptr{UInt8}
end
const TextureID_t = Int32
struct RenderModel_t
  rVertexData :: Ptr{RenderModel_Vertex_t} # const RenderModel_Vertex_t *rVertexData; // Vertex data for the mesh
  unVertexCount :: UInt32                  # uint32_t unVertexCount;                  // Number of vertices in the vertex data
  rIndexDataH :: UInt32 # Ptr{…}
  rIndexDataL :: UInt32 # Ptr{…}                # const uint16_t *rIndexData;              // Indices into the vertex data for each triangle
  unTriangleCount :: UInt32                # uint32_t unTriangleCount;                // Number of triangles in the mesh. Index count is 3 * TriangleCount
  diffuseTextureId :: TextureID_t          # TextureID_t diffuseTextureId;
end
struct RenderModel_ControllerMode_State_t
  bScrollWheelVisible :: Bool
end
struct InputAnalogActionData_t
  bActive :: Bool
  activeOrigin :: VRInputValueHandle_t
  x :: Float32
  y :: Float32
  z :: Float32
  deltaX :: Float32
  deltaY :: Float32
  deltaZ :: Float32
  fUpdateTime :: Float32
end
struct InputDigitalActionData_t
  bActive :: Bool
  activeOrigin :: VRInputValueHandle_t
  bState :: Bool
  bChanged :: Bool
  fUpdateTime :: Float32
end
struct InputPoseActionData_t
  bActive :: Bool
  activeOrigin :: VRInputValueHandle_t
  pose :: TrackedDevicePose_t
end
struct InputSkeletalActionData_t
  bActive :: Bool
  activeOrigin :: VRInputValueHandle_t
end
struct InputOriginInfo_t
  devicePath :: VRInputValueHandle_t
  trackedDeviceIndex :: TrackedDeviceIndex_t
  rchRenderModelComponentName :: SArray{Tuple{128},Cchar,1,128}
end
struct VRActiveActionSet_t
  ulActionSet :: VRActionSetHandle_t
  ulRestrictedToDevice :: VRInputValueHandle_t
  ulSecondaryActionSet :: VRActionSetHandle_t
  unPadding :: UInt32
  nPriority :: Int32
end
struct VRSkeletalSummaryData_t
  flFingerCurl :: SArray{Tuple{5},Float32,1,5}
  flFingerSplay :: SArray{Tuple{4},Float32,1,4}
end
const IOBufferHandle_t = UInt64
struct SpatialAnchorPose_t
  mAnchorToAbsoluteTracking :: HmdMatrix34_t
end
const HmdError = EVRInitError
const Hmd_Eye = EVREye
const ColorSpace = EColorSpace
const HmdTrackingResult = ETrackingResult
const TrackedDeviceClass = ETrackedDeviceClass
const TrackingUniverseOrigin = ETrackingUniverseOrigin
const TrackedDeviceProperty = ETrackedDeviceProperty
const TrackedPropertyError = ETrackedPropertyError
const VRSubmitFlags_t = EVRSubmitFlags
const VRState_t = EVRState
const CollisionBoundsStyle_t = ECollisionBoundsStyle
const VROverlayError = EVROverlayError
const VRFirmwareError = EVRFirmwareError
const VRCompositorError = EVRCompositorError
const VRScreenshotsError = EVRScreenshotError
