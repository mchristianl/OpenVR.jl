export IsRoleAllowedAsHand
IsRoleAllowedAsHand(arg1 :: CppEnum{Symbol("vr::ETrackedControllerRole"),UInt32}) :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsRoleAllowedAsHand}}(), arg1)
IsRoleAllowedAsHand(arg1) =
  IsRoleAllowedAsHand(reinterpret4cxx(Cxx.CxxCore.CppEnum{Symbol("vr::ETrackedControllerRole"),UInt32}, arg1))

export ButtonMaskFromId
ButtonMaskFromId(arg1 :: CppEnum{Symbol("vr::EVRButtonId"),UInt32}) :: UInt64 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ButtonMaskFromId}}(), arg1)
ButtonMaskFromId(arg1) =
  ButtonMaskFromId(reinterpret4cxx(Cxx.CxxCore.CppEnum{Symbol("vr::EVRButtonId"),UInt32}, arg1))

export VRToken
VRToken() :: CppRef{UInt32,(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRToken}}())

export OpenVRInternal_ModuleContext
OpenVRInternal_ModuleContext() :: CppRef{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :OpenVRInternal_ModuleContext}}())

export VRSystem
VRSystem() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRSystem}}())

export VRChaperone
VRChaperone() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRChaperone}}())

export VRChaperoneSetup
VRChaperoneSetup() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRChaperoneSetup}}())

export VRCompositor
VRCompositor() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRCompositor}}())

export VROverlay
VROverlay() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VROverlay}}())

export VRScreenshots
VRScreenshots() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRScreenshots}}())

export VRRenderModels
VRRenderModels() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRRenderModels}}())

export VRApplications
VRApplications() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRApplications}}())

export VRSettings
VRSettings() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRSettings}}())

export VRResources
VRResources() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRResources")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRResources}}())

export VRExtendedDisplay
VRExtendedDisplay() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRExtendedDisplay}}())

export VRTrackedCamera
VRTrackedCamera() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRTrackedCamera}}())

export VRDriverManager
VRDriverManager() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRDriverManager}}())

export VRInput
VRInput() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRInput}}())

export VRIOBuffer
VRIOBuffer() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRIOBuffer}}())

export VRSpatialAnchors
VRSpatialAnchors() :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRSpatialAnchors}}())

export VR_Init
VR_Init(
    arg1 :: Ptr{CppEnum{Symbol("vr::EVRInitError"),UInt32}}
  , arg2 :: CppEnum{Symbol("vr::EVRApplicationType"),UInt32}
  , arg3 :: Ptr{UInt8}
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VR_Init}}(), arg1, arg2, arg3)
VR_Init(arg1, arg2, arg3) =
  VR_Init(
      reinterpret4cxx(Ptr{Cxx.CxxCore.CppEnum{Symbol("vr::EVRInitError"),UInt32}}, arg1)
    , reinterpret4cxx(Cxx.CxxCore.CppEnum{Symbol("vr::EVRApplicationType"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    )

export VR_Shutdown
VR_Shutdown() :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VR_Shutdown}}())

