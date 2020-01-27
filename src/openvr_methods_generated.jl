export GetRecommendedRenderTargetSize
GetRecommendedRenderTargetSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt32}
  , arg2 :: Ptr{UInt32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetRecommendedRenderTargetSize}}(), this, arg1, arg2)
GetRecommendedRenderTargetSize(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2) =
  GetRecommendedRenderTargetSize(
      this
    , reinterpret4cxx(Ptr{UInt32}, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export GetProjectionMatrix
GetProjectionMatrix(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  , arg2 :: Float32
  , arg3 :: Float32
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix44_t")},(false, false, false)},N} where N =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetProjectionMatrix}}(), this, arg1, arg2, arg3)
GetProjectionMatrix(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetProjectionMatrix(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    , reinterpret4cxx(Float32, arg2)
    , reinterpret4cxx(Float32, arg3)
    )

export GetProjectionRaw
GetProjectionRaw(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  , arg2 :: Ptr{Float32}
  , arg3 :: Ptr{Float32}
  , arg4 :: Ptr{Float32}
  , arg5 :: Ptr{Float32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetProjectionRaw}}(), this, arg1, arg2, arg3, arg4, arg5)
GetProjectionRaw(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetProjectionRaw(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    , reinterpret4cxx(Ptr{Float32}, arg3)
    , reinterpret4cxx(Ptr{Float32}, arg4)
    , reinterpret4cxx(Ptr{Float32}, arg5)
    )

export ComputeDistortion
ComputeDistortion(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  , arg2 :: Float32
  , arg3 :: Float32
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::DistortionCoordinates_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ComputeDistortion}}(), this, arg1, arg2, arg3, arg4)
ComputeDistortion(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  ComputeDistortion(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    , reinterpret4cxx(Float32, arg2)
    , reinterpret4cxx(Float32, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::DistortionCoordinates_t")},(false, false, false)},(false, false, false)}, arg4)
    )

export GetEyeToHeadTransform
GetEyeToHeadTransform(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},N} where N =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetEyeToHeadTransform}}(), this, arg1)
GetEyeToHeadTransform(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetEyeToHeadTransform(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    )

export GetTimeSinceLastVsync
GetTimeSinceLastVsync(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: Ptr{Float32}
  , arg2 :: Ptr{UInt64}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetTimeSinceLastVsync}}(), this, arg1, arg2)
GetTimeSinceLastVsync(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2) =
  GetTimeSinceLastVsync(
      this
    , reinterpret4cxx(Ptr{Float32}, arg1)
    , reinterpret4cxx(Ptr{UInt64}, arg2)
    )

export GetD3D9AdapterIndex
GetD3D9AdapterIndex(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Int32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetD3D9AdapterIndex}}(), this)

export GetDXGIOutputInfo
GetDXGIOutputInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: Ptr{Int32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDXGIOutputInfo}}(), this, arg1)
GetDXGIOutputInfo(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetDXGIOutputInfo(
      this
    , reinterpret4cxx(Ptr{Int32}, arg1)
    )

export GetOutputDevice
GetOutputDevice(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt64}
  , arg2 :: CppEnum{Symbol("vr::ETextureType"),Int32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{:VkInstance_T},(false, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOutputDevice}}(), this, arg1, arg2, arg3)
GetOutputDevice(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetOutputDevice(
      this
    , reinterpret4cxx(Ptr{UInt64}, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETextureType"),Int32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{:VkInstance_T},(false, false, false)},(false, false, false)}, arg3)
    )

export IsDisplayOnDesktop
IsDisplayOnDesktop(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsDisplayOnDesktop}}(), this)

export SetDisplayVisibility
SetDisplayVisibility(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetDisplayVisibility}}(), this, arg1)
SetDisplayVisibility(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  SetDisplayVisibility(
      this
    , reinterpret4cxx(Bool, arg1)
    )

export GetDeviceToAbsoluteTrackingPose
GetDeviceToAbsoluteTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg2 :: Float32
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg4 :: UInt32
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDeviceToAbsoluteTrackingPose}}(), this, arg1, arg2, arg3, arg4)
GetDeviceToAbsoluteTrackingPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetDeviceToAbsoluteTrackingPose(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg1)
    , reinterpret4cxx(Float32, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export ResetSeatedZeroPose
ResetSeatedZeroPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ResetSeatedZeroPose}}(), this)

export GetSeatedZeroPoseToStandingAbsoluteTrackingPose
GetSeatedZeroPoseToStandingAbsoluteTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},N} where N =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSeatedZeroPoseToStandingAbsoluteTrackingPose}}(), this)

export GetRawZeroPoseToStandingAbsoluteTrackingPose
GetRawZeroPoseToStandingAbsoluteTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},N} where N =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetRawZeroPoseToStandingAbsoluteTrackingPose}}(), this)

export GetSortedTrackedDeviceIndicesOfClass
GetSortedTrackedDeviceIndicesOfClass(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackedDeviceClass"),UInt32}
  , arg2 :: Ptr{UInt32}
  , arg3 :: UInt32
  , arg4 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSortedTrackedDeviceIndicesOfClass}}(), this, arg1, arg2, arg3, arg4)
GetSortedTrackedDeviceIndicesOfClass(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetSortedTrackedDeviceIndicesOfClass(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedDeviceClass"),UInt32}, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetTrackedDeviceActivityLevel
GetTrackedDeviceActivityLevel(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  )      :: CppEnum{Symbol("vr::EDeviceActivityLevel"),Int32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetTrackedDeviceActivityLevel}}(), this, arg1)
GetTrackedDeviceActivityLevel(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetTrackedDeviceActivityLevel(
      this
    , reinterpret4cxx(UInt32, arg1)
    )

export ApplyTransform
ApplyTransform(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(true, false, false)},(false, false, false)}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ApplyTransform}}(), this, arg1, arg2, arg3)
ApplyTransform(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  ApplyTransform(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(true, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}, arg3)
    )

export GetTrackedDeviceIndexForControllerRole
GetTrackedDeviceIndexForControllerRole(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackedControllerRole"),UInt32}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetTrackedDeviceIndexForControllerRole}}(), this, arg1)
GetTrackedDeviceIndexForControllerRole(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetTrackedDeviceIndexForControllerRole(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedControllerRole"),UInt32}, arg1)
    )

export GetControllerRoleForTrackedDeviceIndex
GetControllerRoleForTrackedDeviceIndex(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  )      :: CppEnum{Symbol("vr::ETrackedControllerRole"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetControllerRoleForTrackedDeviceIndex}}(), this, arg1)
GetControllerRoleForTrackedDeviceIndex(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetControllerRoleForTrackedDeviceIndex(
      this
    , reinterpret4cxx(UInt32, arg1)
    )

export GetTrackedDeviceClass
GetTrackedDeviceClass(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  )      :: CppEnum{Symbol("vr::ETrackedDeviceClass"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetTrackedDeviceClass}}(), this, arg1)
GetTrackedDeviceClass(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetTrackedDeviceClass(
      this
    , reinterpret4cxx(UInt32, arg1)
    )

export IsTrackedDeviceConnected
IsTrackedDeviceConnected(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsTrackedDeviceConnected}}(), this, arg1)
IsTrackedDeviceConnected(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  IsTrackedDeviceConnected(
      this
    , reinterpret4cxx(UInt32, arg1)
    )

export GetBoolTrackedDeviceProperty
GetBoolTrackedDeviceProperty(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}
  , arg3 :: Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetBoolTrackedDeviceProperty}}(), this, arg1, arg2, arg3)
GetBoolTrackedDeviceProperty(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetBoolTrackedDeviceProperty(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}, arg3)
    )

export GetFloatTrackedDeviceProperty
GetFloatTrackedDeviceProperty(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}
  , arg3 :: Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}
  )      :: Float32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetFloatTrackedDeviceProperty}}(), this, arg1, arg2, arg3)
GetFloatTrackedDeviceProperty(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetFloatTrackedDeviceProperty(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}, arg3)
    )

export GetInt32TrackedDeviceProperty
GetInt32TrackedDeviceProperty(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}
  , arg3 :: Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}
  )      :: Int32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetInt32TrackedDeviceProperty}}(), this, arg1, arg2, arg3)
GetInt32TrackedDeviceProperty(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetInt32TrackedDeviceProperty(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}, arg3)
    )

export GetUint64TrackedDeviceProperty
GetUint64TrackedDeviceProperty(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}
  , arg3 :: Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}
  )      :: UInt64 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetUint64TrackedDeviceProperty}}(), this, arg1, arg2, arg3)
GetUint64TrackedDeviceProperty(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetUint64TrackedDeviceProperty(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}, arg3)
    )

export GetMatrix34TrackedDeviceProperty
GetMatrix34TrackedDeviceProperty(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}
  , arg3 :: Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},N} where N =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetMatrix34TrackedDeviceProperty}}(), this, arg1, arg2, arg3)
GetMatrix34TrackedDeviceProperty(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetMatrix34TrackedDeviceProperty(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}, arg3)
    )

export GetArrayTrackedDeviceProperty
GetArrayTrackedDeviceProperty(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}
  , arg3 :: UInt32
  , arg4 :: Ptr{Nothing}
  , arg5 :: UInt32
  , arg6 :: Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetArrayTrackedDeviceProperty}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
GetArrayTrackedDeviceProperty(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6) =
  GetArrayTrackedDeviceProperty(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(Ptr{Nothing}, arg4)
    , reinterpret4cxx(UInt32, arg5)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}, arg6)
    )

export GetStringTrackedDeviceProperty
GetStringTrackedDeviceProperty(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  , arg5 :: Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetStringTrackedDeviceProperty}}(), this, arg1, arg2, arg3, arg4, arg5)
GetStringTrackedDeviceProperty(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetStringTrackedDeviceProperty(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedDeviceProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}}, arg5)
    )

export GetPropErrorNameFromEnum
GetPropErrorNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetPropErrorNameFromEnum}}(), this, arg1)
GetPropErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetPropErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackedPropertyError"),UInt32}, arg1)
    )

export PollNextEvent
PollNextEvent(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VREvent_t")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :PollNextEvent}}(), this, arg1, arg2)
PollNextEvent(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2) =
  PollNextEvent(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VREvent_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export PollNextEventWithPose
PollNextEventWithPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VREvent_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :PollNextEventWithPose}}(), this, arg1, arg2, arg3, arg4)
PollNextEventWithPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  PollNextEventWithPose(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VREvent_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg4)
    )

export GetEventTypeNameFromEnum
GetEventTypeNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREventType"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetEventTypeNameFromEnum}}(), this, arg1)
GetEventTypeNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetEventTypeNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREventType"),UInt32}, arg1)
    )

export GetHiddenAreaMesh
GetHiddenAreaMesh(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  , arg2 :: CppEnum{Symbol("vr::EHiddenAreaMeshType"),UInt32}
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HiddenAreaMesh_t")},(false, false, false)},N} where N =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetHiddenAreaMesh}}(), this, arg1, arg2)
GetHiddenAreaMesh(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2) =
  GetHiddenAreaMesh(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EHiddenAreaMeshType"),UInt32}, arg2)
    )

export GetControllerState
GetControllerState(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRControllerState001_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetControllerState}}(), this, arg1, arg2, arg3)
GetControllerState(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetControllerState(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRControllerState001_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetControllerStateWithPose
GetControllerStateWithPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg2 :: UInt32
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRControllerState001_t")},(false, false, false)},(false, false, false)}
  , arg4 :: UInt32
  , arg5 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetControllerStateWithPose}}(), this, arg1, arg2, arg3, arg4, arg5)
GetControllerStateWithPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetControllerStateWithPose(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRControllerState001_t")},(false, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg5)
    )

export TriggerHapticPulse
TriggerHapticPulse(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: UInt32
  , arg3 :: UInt16
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :TriggerHapticPulse}}(), this, arg1, arg2, arg3)
TriggerHapticPulse(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  TriggerHapticPulse(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(UInt16, arg3)
    )

export GetButtonIdNameFromEnum
GetButtonIdNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRButtonId"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetButtonIdNameFromEnum}}(), this, arg1)
GetButtonIdNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetButtonIdNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRButtonId"),UInt32}, arg1)
    )

export GetControllerAxisTypeNameFromEnum
GetControllerAxisTypeNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRControllerAxisType"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetControllerAxisTypeNameFromEnum}}(), this, arg1)
GetControllerAxisTypeNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetControllerAxisTypeNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRControllerAxisType"),UInt32}, arg1)
    )

export IsInputAvailable
IsInputAvailable(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsInputAvailable}}(), this)

export IsSteamVRDrawingControllers
IsSteamVRDrawingControllers(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsSteamVRDrawingControllers}}(), this)

export ShouldApplicationPause
ShouldApplicationPause(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShouldApplicationPause}}(), this)

export ShouldApplicationReduceRenderingWork
ShouldApplicationReduceRenderingWork(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShouldApplicationReduceRenderingWork}}(), this)

export DriverDebugRequest
DriverDebugRequest(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :DriverDebugRequest}}(), this, arg1, arg2, arg3, arg4)
DriverDebugRequest(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  DriverDebugRequest(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export PerformFirmwareUpdate
PerformFirmwareUpdate(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRFirmwareError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :PerformFirmwareUpdate}}(), this, arg1)
PerformFirmwareUpdate(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  PerformFirmwareUpdate(
      this
    , reinterpret4cxx(UInt32, arg1)
    )

export AcknowledgeQuit_Exiting
AcknowledgeQuit_Exiting(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :AcknowledgeQuit_Exiting}}(), this)

export AcknowledgeQuit_UserPrompt
AcknowledgeQuit_UserPrompt(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :AcknowledgeQuit_UserPrompt}}(), this)

export AddApplicationManifest
AddApplicationManifest(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Bool
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :AddApplicationManifest}}(), this, arg1, arg2)
AddApplicationManifest(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2) =
  AddApplicationManifest(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Bool, arg2)
    )

export RemoveApplicationManifest
RemoveApplicationManifest(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RemoveApplicationManifest}}(), this, arg1)
RemoveApplicationManifest(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  RemoveApplicationManifest(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export IsApplicationInstalled
IsApplicationInstalled(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsApplicationInstalled}}(), this, arg1)
IsApplicationInstalled(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  IsApplicationInstalled(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export GetApplicationCount
GetApplicationCount(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationCount}}(), this)

export GetApplicationKeyByIndex
GetApplicationKeyByIndex(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationKeyByIndex}}(), this, arg1, arg2, arg3)
GetApplicationKeyByIndex(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetApplicationKeyByIndex(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetApplicationKeyByProcessId
GetApplicationKeyByProcessId(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationKeyByProcessId}}(), this, arg1, arg2, arg3)
GetApplicationKeyByProcessId(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetApplicationKeyByProcessId(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export LaunchApplication
LaunchApplication(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LaunchApplication}}(), this, arg1)
LaunchApplication(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  LaunchApplication(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export LaunchTemplateApplication
LaunchTemplateApplication(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::AppOverrideKeys_t")},(true, false, false)},(false, false, false)}
  , arg4 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LaunchTemplateApplication}}(), this, arg1, arg2, arg3, arg4)
LaunchTemplateApplication(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  LaunchTemplateApplication(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::AppOverrideKeys_t")},(true, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export LaunchApplicationFromMimeType
LaunchApplicationFromMimeType(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LaunchApplicationFromMimeType}}(), this, arg1, arg2)
LaunchApplicationFromMimeType(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2) =
  LaunchApplicationFromMimeType(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    )

export LaunchDashboardOverlay
LaunchDashboardOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LaunchDashboardOverlay}}(), this, arg1)
LaunchDashboardOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  LaunchDashboardOverlay(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export CancelApplicationLaunch
CancelApplicationLaunch(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CancelApplicationLaunch}}(), this, arg1)
CancelApplicationLaunch(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  CancelApplicationLaunch(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export IdentifyApplication
IdentifyApplication(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IdentifyApplication}}(), this, arg1, arg2)
IdentifyApplication(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2) =
  IdentifyApplication(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    )

export GetApplicationProcessId
GetApplicationProcessId(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationProcessId}}(), this, arg1)
GetApplicationProcessId(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  GetApplicationProcessId(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export GetApplicationsErrorNameFromEnum
GetApplicationsErrorNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationsErrorNameFromEnum}}(), this, arg1)
GetApplicationsErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  GetApplicationsErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRApplicationError"),UInt32}, arg1)
    )

export GetApplicationPropertyString
GetApplicationPropertyString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: CppEnum{Symbol("vr::EVRApplicationProperty"),UInt32}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  , arg5 :: Ptr{CppEnum{Symbol("vr::EVRApplicationError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationPropertyString}}(), this, arg1, arg2, arg3, arg4, arg5)
GetApplicationPropertyString(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetApplicationPropertyString(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRApplicationProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRApplicationError"),UInt32}}, arg5)
    )

export GetApplicationPropertyBool
GetApplicationPropertyBool(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: CppEnum{Symbol("vr::EVRApplicationProperty"),UInt32}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRApplicationError"),UInt32}}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationPropertyBool}}(), this, arg1, arg2, arg3)
GetApplicationPropertyBool(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetApplicationPropertyBool(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRApplicationProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRApplicationError"),UInt32}}, arg3)
    )

export GetApplicationPropertyUint64
GetApplicationPropertyUint64(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: CppEnum{Symbol("vr::EVRApplicationProperty"),UInt32}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRApplicationError"),UInt32}}
  )      :: UInt64 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationPropertyUint64}}(), this, arg1, arg2, arg3)
GetApplicationPropertyUint64(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetApplicationPropertyUint64(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRApplicationProperty"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRApplicationError"),UInt32}}, arg3)
    )

export SetApplicationAutoLaunch
SetApplicationAutoLaunch(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Bool
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetApplicationAutoLaunch}}(), this, arg1, arg2)
SetApplicationAutoLaunch(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2) =
  SetApplicationAutoLaunch(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Bool, arg2)
    )

export GetApplicationAutoLaunch
GetApplicationAutoLaunch(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationAutoLaunch}}(), this, arg1)
GetApplicationAutoLaunch(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  GetApplicationAutoLaunch(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export SetDefaultApplicationForMimeType
SetDefaultApplicationForMimeType(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetDefaultApplicationForMimeType}}(), this, arg1, arg2)
SetDefaultApplicationForMimeType(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2) =
  SetDefaultApplicationForMimeType(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    )

export GetDefaultApplicationForMimeType
GetDefaultApplicationForMimeType(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDefaultApplicationForMimeType}}(), this, arg1, arg2, arg3)
GetDefaultApplicationForMimeType(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetDefaultApplicationForMimeType(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetApplicationSupportedMimeTypes
GetApplicationSupportedMimeTypes(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationSupportedMimeTypes}}(), this, arg1, arg2, arg3)
GetApplicationSupportedMimeTypes(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetApplicationSupportedMimeTypes(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetApplicationsThatSupportMimeType
GetApplicationsThatSupportMimeType(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationsThatSupportMimeType}}(), this, arg1, arg2, arg3)
GetApplicationsThatSupportMimeType(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetApplicationsThatSupportMimeType(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetApplicationLaunchArguments
GetApplicationLaunchArguments(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationLaunchArguments}}(), this, arg1, arg2, arg3)
GetApplicationLaunchArguments(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetApplicationLaunchArguments(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetStartingApplication
GetStartingApplication(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetStartingApplication}}(), this, arg1, arg2)
GetStartingApplication(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2) =
  GetStartingApplication(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export GetTransitionState
GetTransitionState(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  )      :: CppEnum{Symbol("vr::EVRApplicationTransitionState"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetTransitionState}}(), this)

export PerformApplicationPrelaunchCheck
PerformApplicationPrelaunchCheck(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :PerformApplicationPrelaunchCheck}}(), this, arg1)
PerformApplicationPrelaunchCheck(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  PerformApplicationPrelaunchCheck(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export GetApplicationsTransitionStateNameFromEnum
GetApplicationsTransitionStateNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRApplicationTransitionState"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetApplicationsTransitionStateNameFromEnum}}(), this, arg1)
GetApplicationsTransitionStateNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  GetApplicationsTransitionStateNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRApplicationTransitionState"),UInt32}, arg1)
    )

export IsQuitUserPromptRequested
IsQuitUserPromptRequested(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsQuitUserPromptRequested}}(), this)

export LaunchInternalProcess
LaunchInternalProcess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LaunchInternalProcess}}(), this, arg1, arg2, arg3)
LaunchInternalProcess(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  LaunchInternalProcess(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    )

export GetCurrentSceneProcessId
GetCurrentSceneProcessId(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCurrentSceneProcessId}}(), this)

export GetSettingsErrorNameFromEnum
GetSettingsErrorNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRSettingsError"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSettingsErrorNameFromEnum}}(), this, arg1)
GetSettingsErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1) =
  GetSettingsErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSettingsError"),UInt32}, arg1)
    )

export Sync
Sync(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Bool
  , arg2 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :Sync}}(), this, arg1, arg2)
Sync(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2) =
  Sync(
      this
    , reinterpret4cxx(Bool, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg2)
    )

export SetBool
SetBool(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Bool
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetBool}}(), this, arg1, arg2, arg3, arg4)
SetBool(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetBool(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Bool, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg4)
    )

export SetInt32
SetInt32(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Int32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetInt32}}(), this, arg1, arg2, arg3, arg4)
SetInt32(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetInt32(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Int32, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg4)
    )

export SetFloat
SetFloat(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Float32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetFloat}}(), this, arg1, arg2, arg3, arg4)
SetFloat(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetFloat(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Float32, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg4)
    )

export SetString
SetString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetString}}(), this, arg1, arg2, arg3, arg4)
SetString(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetString(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg4)
    )

export GetBool
GetBool(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetBool}}(), this, arg1, arg2, arg3)
GetBool(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetBool(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg3)
    )

export GetInt32
GetInt32(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Int32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetInt32}}(), this, arg1, arg2, arg3)
GetInt32(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetInt32(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg3)
    )

export GetFloat
GetFloat(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Float32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetFloat}}(), this, arg1, arg2, arg3)
GetFloat(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetFloat(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg3)
    )

export GetString
GetString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  , arg5 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetString}}(), this, arg1, arg2, arg3, arg4, arg5)
GetString(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetString(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg5)
    )

export RemoveSection
RemoveSection(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RemoveSection}}(), this, arg1, arg2)
RemoveSection(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2) =
  RemoveSection(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg2)
    )

export RemoveKeyInSection
RemoveKeyInSection(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RemoveKeyInSection}}(), this, arg1, arg2, arg3)
RemoveKeyInSection(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  RemoveKeyInSection(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg3)
    )

export GetSettingsErrorNameFromEnum
GetSettingsErrorNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRSettingsError"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSettingsErrorNameFromEnum}}(), this, arg1)
GetSettingsErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1) =
  GetSettingsErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSettingsError"),UInt32}, arg1)
    )

export Sync
Sync(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Bool
  , arg2 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :Sync}}(), this, arg1, arg2)
Sync(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2) =
  Sync(
      this
    , reinterpret4cxx(Bool, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg2)
    )

export SetBool
SetBool(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Bool
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetBool}}(), this, arg1, arg2, arg3, arg4)
SetBool(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetBool(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Bool, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg4)
    )

export SetInt32
SetInt32(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Int32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetInt32}}(), this, arg1, arg2, arg3, arg4)
SetInt32(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetInt32(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Int32, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg4)
    )

export SetFloat
SetFloat(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Float32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetFloat}}(), this, arg1, arg2, arg3, arg4)
SetFloat(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetFloat(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Float32, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg4)
    )

export SetString
SetString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetString}}(), this, arg1, arg2, arg3, arg4)

export SetString
SetString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg2 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg3 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetString}}(), this, arg1, arg2, arg3, arg4)

export GetBool
GetBool(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetBool}}(), this, arg1, arg2, arg3)
GetBool(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetBool(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg3)
    )

export GetInt32
GetInt32(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Int32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetInt32}}(), this, arg1, arg2, arg3)
GetInt32(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetInt32(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg3)
    )

export GetFloat
GetFloat(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Float32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetFloat}}(), this, arg1, arg2, arg3)
GetFloat(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetFloat(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg3)
    )

export GetString
GetString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  , arg5 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetString}}(), this, arg1, arg2, arg3, arg4, arg5)

export GetString
GetString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg2 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: CppValue{CxxQualType{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)},N} where N =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetString}}(), this, arg1, arg2, arg3)

export RemoveSection
RemoveSection(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RemoveSection}}(), this, arg1, arg2)
RemoveSection(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2) =
  RemoveSection(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg2)
    )

export RemoveKeyInSection
RemoveKeyInSection(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RemoveKeyInSection}}(), this, arg1, arg2, arg3)
RemoveKeyInSection(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  RemoveKeyInSection(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}, arg3)
    )

export GetCalibrationState
GetCalibrationState(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  )      :: CppEnum{Symbol("vr::ChaperoneCalibrationState"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCalibrationState}}(), this)

export GetPlayAreaSize
GetPlayAreaSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  , arg1 :: Ptr{Float32}
  , arg2 :: Ptr{Float32}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetPlayAreaSize}}(), this, arg1, arg2)
GetPlayAreaSize(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N, arg1, arg2) =
  GetPlayAreaSize(
      this
    , reinterpret4cxx(Ptr{Float32}, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    )

export GetPlayAreaRect
GetPlayAreaRect(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetPlayAreaRect}}(), this, arg1)
GetPlayAreaRect(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N, arg1) =
  GetPlayAreaRect(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}, arg1)
    )

export ReloadInfo
ReloadInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ReloadInfo}}(), this)

export SetSceneColor
SetSceneColor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  , arg1 :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetSceneColor}}(), this, arg1)
SetSceneColor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N, arg1) =
  SetSceneColor(
      this
    , reinterpret4cxx(CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},N} where N, arg1)
    )

export GetBoundsColor
GetBoundsColor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},(false, false, false)}
  , arg2 :: Int32
  , arg3 :: Float32
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetBoundsColor}}(), this, arg1, arg2, arg3, arg4)
GetBoundsColor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetBoundsColor(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(Int32, arg2)
    , reinterpret4cxx(Float32, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},(false, false, false)}, arg4)
    )

export AreBoundsVisible
AreBoundsVisible(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :AreBoundsVisible}}(), this)

export ForceBoundsVisible
ForceBoundsVisible(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ForceBoundsVisible}}(), this, arg1)
ForceBoundsVisible(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N, arg1) =
  ForceBoundsVisible(
      this
    , reinterpret4cxx(Bool, arg1)
    )

export CommitWorkingCopy
CommitWorkingCopy(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EChaperoneConfigFile"),UInt32}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CommitWorkingCopy}}(), this, arg1)
CommitWorkingCopy(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  CommitWorkingCopy(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EChaperoneConfigFile"),UInt32}, arg1)
    )

export RevertWorkingCopy
RevertWorkingCopy(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RevertWorkingCopy}}(), this)

export GetWorkingPlayAreaSize
GetWorkingPlayAreaSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: Ptr{Float32}
  , arg2 :: Ptr{Float32}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetWorkingPlayAreaSize}}(), this, arg1, arg2)
GetWorkingPlayAreaSize(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1, arg2) =
  GetWorkingPlayAreaSize(
      this
    , reinterpret4cxx(Ptr{Float32}, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    )

export GetWorkingPlayAreaRect
GetWorkingPlayAreaRect(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetWorkingPlayAreaRect}}(), this, arg1)
GetWorkingPlayAreaRect(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  GetWorkingPlayAreaRect(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}, arg1)
    )

export GetWorkingCollisionBoundsInfo
GetWorkingCollisionBoundsInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}
  , arg2 :: Ptr{UInt32}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetWorkingCollisionBoundsInfo}}(), this, arg1, arg2)
GetWorkingCollisionBoundsInfo(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1, arg2) =
  GetWorkingCollisionBoundsInfo(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export GetLiveCollisionBoundsInfo
GetLiveCollisionBoundsInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}
  , arg2 :: Ptr{UInt32}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetLiveCollisionBoundsInfo}}(), this, arg1, arg2)
GetLiveCollisionBoundsInfo(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1, arg2) =
  GetLiveCollisionBoundsInfo(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export GetWorkingSeatedZeroPoseToRawTrackingPose
GetWorkingSeatedZeroPoseToRawTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetWorkingSeatedZeroPoseToRawTrackingPose}}(), this, arg1)
GetWorkingSeatedZeroPoseToRawTrackingPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  GetWorkingSeatedZeroPoseToRawTrackingPose(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}, arg1)
    )

export GetWorkingStandingZeroPoseToRawTrackingPose
GetWorkingStandingZeroPoseToRawTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetWorkingStandingZeroPoseToRawTrackingPose}}(), this, arg1)
GetWorkingStandingZeroPoseToRawTrackingPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  GetWorkingStandingZeroPoseToRawTrackingPose(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}, arg1)
    )

export SetWorkingPlayAreaSize
SetWorkingPlayAreaSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: Float32
  , arg2 :: Float32
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetWorkingPlayAreaSize}}(), this, arg1, arg2)
SetWorkingPlayAreaSize(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1, arg2) =
  SetWorkingPlayAreaSize(
      this
    , reinterpret4cxx(Float32, arg1)
    , reinterpret4cxx(Float32, arg2)
    )

export SetWorkingCollisionBoundsInfo
SetWorkingCollisionBoundsInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetWorkingCollisionBoundsInfo}}(), this, arg1, arg2)
SetWorkingCollisionBoundsInfo(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1, arg2) =
  SetWorkingCollisionBoundsInfo(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export SetWorkingPerimeter
SetWorkingPerimeter(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetWorkingPerimeter}}(), this, arg1, arg2)
SetWorkingPerimeter(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1, arg2) =
  SetWorkingPerimeter(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export SetWorkingSeatedZeroPoseToRawTrackingPose
SetWorkingSeatedZeroPoseToRawTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetWorkingSeatedZeroPoseToRawTrackingPose}}(), this, arg1)
SetWorkingSeatedZeroPoseToRawTrackingPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  SetWorkingSeatedZeroPoseToRawTrackingPose(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}, arg1)
    )

export SetWorkingStandingZeroPoseToRawTrackingPose
SetWorkingStandingZeroPoseToRawTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetWorkingStandingZeroPoseToRawTrackingPose}}(), this, arg1)
SetWorkingStandingZeroPoseToRawTrackingPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  SetWorkingStandingZeroPoseToRawTrackingPose(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}, arg1)
    )

export ReloadFromDisk
ReloadFromDisk(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EChaperoneConfigFile"),UInt32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ReloadFromDisk}}(), this, arg1)
ReloadFromDisk(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  ReloadFromDisk(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EChaperoneConfigFile"),UInt32}, arg1)
    )

export GetLiveSeatedZeroPoseToRawTrackingPose
GetLiveSeatedZeroPoseToRawTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetLiveSeatedZeroPoseToRawTrackingPose}}(), this, arg1)
GetLiveSeatedZeroPoseToRawTrackingPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  GetLiveSeatedZeroPoseToRawTrackingPose(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}, arg1)
    )

export ExportLiveToBuffer
ExportLiveToBuffer(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt32}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ExportLiveToBuffer}}(), this, arg1, arg2)
ExportLiveToBuffer(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1, arg2) =
  ExportLiveToBuffer(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export ImportFromBufferToWorking
ImportFromBufferToWorking(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: UInt32
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ImportFromBufferToWorking}}(), this, arg1, arg2)
ImportFromBufferToWorking(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1, arg2) =
  ImportFromBufferToWorking(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export ShowWorkingSetPreview
ShowWorkingSetPreview(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowWorkingSetPreview}}(), this)

export HideWorkingSetPreview
HideWorkingSetPreview(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :HideWorkingSetPreview}}(), this)

export SetTrackingSpace
SetTrackingSpace(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetTrackingSpace}}(), this, arg1)
SetTrackingSpace(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  SetTrackingSpace(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg1)
    )

export GetTrackingSpace
GetTrackingSpace(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetTrackingSpace}}(), this)

export WaitGetPoses
WaitGetPoses(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg4 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :WaitGetPoses}}(), this, arg1, arg2, arg3, arg4)
WaitGetPoses(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  WaitGetPoses(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetLastPoses
GetLastPoses(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg4 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetLastPoses}}(), this, arg1, arg2, arg3, arg4)
GetLastPoses(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetLastPoses(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetLastPoseForTrackedDeviceIndex
GetLastPoseForTrackedDeviceIndex(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetLastPoseForTrackedDeviceIndex}}(), this, arg1, arg2, arg3)
GetLastPoseForTrackedDeviceIndex(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetLastPoseForTrackedDeviceIndex(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}, arg3)
    )

export Submit
Submit(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Texture_t")},(true, false, false)},(false, false, false)}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(true, false, false)},(false, false, false)}
  , arg4 :: CppEnum{Symbol("vr::EVRSubmitFlags"),UInt32}
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :Submit}}(), this, arg1, arg2, arg3, arg4)
Submit(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  Submit(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::Texture_t")},(true, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(true, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSubmitFlags"),UInt32}, arg4)
    )

export ClearLastSubmittedFrame
ClearLastSubmittedFrame(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ClearLastSubmittedFrame}}(), this)

export PostPresentHandoff
PostPresentHandoff(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :PostPresentHandoff}}(), this)

export GetFrameTiming
GetFrameTiming(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Compositor_FrameTiming")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetFrameTiming}}(), this, arg1, arg2)
GetFrameTiming(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2) =
  GetFrameTiming(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::Compositor_FrameTiming")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export GetFrameTimings
GetFrameTimings(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Compositor_FrameTiming")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetFrameTimings}}(), this, arg1, arg2)
GetFrameTimings(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2) =
  GetFrameTimings(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::Compositor_FrameTiming")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export GetFrameTimeRemaining
GetFrameTimeRemaining(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Float32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetFrameTimeRemaining}}(), this)

export GetCumulativeStats
GetCumulativeStats(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Compositor_CumulativeStats")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCumulativeStats}}(), this, arg1, arg2)
GetCumulativeStats(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2) =
  GetCumulativeStats(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::Compositor_CumulativeStats")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export FadeToColor
FadeToColor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Float32
  , arg2 :: Float32
  , arg3 :: Float32
  , arg4 :: Float32
  , arg5 :: Float32
  , arg6 :: Bool
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :FadeToColor}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
FadeToColor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6) =
  FadeToColor(
      this
    , reinterpret4cxx(Float32, arg1)
    , reinterpret4cxx(Float32, arg2)
    , reinterpret4cxx(Float32, arg3)
    , reinterpret4cxx(Float32, arg4)
    , reinterpret4cxx(Float32, arg5)
    , reinterpret4cxx(Bool, arg6)
    )

export GetCurrentFadeColor
GetCurrentFadeColor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},N} where N =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCurrentFadeColor}}(), this, arg1)
GetCurrentFadeColor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  GetCurrentFadeColor(
      this
    , reinterpret4cxx(Bool, arg1)
    )

export FadeGrid
FadeGrid(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Float32
  , arg2 :: Bool
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :FadeGrid}}(), this, arg1, arg2)
FadeGrid(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2) =
  FadeGrid(
      this
    , reinterpret4cxx(Float32, arg1)
    , reinterpret4cxx(Bool, arg2)
    )

export GetCurrentGridAlpha
GetCurrentGridAlpha(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Float32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCurrentGridAlpha}}(), this)

export SetSkyboxOverride
SetSkyboxOverride(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Texture_t")},(true, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetSkyboxOverride}}(), this, arg1, arg2)
SetSkyboxOverride(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2) =
  SetSkyboxOverride(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::Texture_t")},(true, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export ClearSkyboxOverride
ClearSkyboxOverride(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ClearSkyboxOverride}}(), this)

export CompositorBringToFront
CompositorBringToFront(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CompositorBringToFront}}(), this)

export CompositorGoToBack
CompositorGoToBack(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CompositorGoToBack}}(), this)

export CompositorQuit
CompositorQuit(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CompositorQuit}}(), this)

export IsFullscreen
IsFullscreen(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsFullscreen}}(), this)

export GetCurrentSceneFocusProcess
GetCurrentSceneFocusProcess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCurrentSceneFocusProcess}}(), this)

export GetLastFrameRenderer
GetLastFrameRenderer(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetLastFrameRenderer}}(), this)

export CanRenderScene
CanRenderScene(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CanRenderScene}}(), this)

export ShowMirrorWindow
ShowMirrorWindow(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowMirrorWindow}}(), this)

export HideMirrorWindow
HideMirrorWindow(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :HideMirrorWindow}}(), this)

export IsMirrorWindowVisible
IsMirrorWindowVisible(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsMirrorWindowVisible}}(), this)

export CompositorDumpImages
CompositorDumpImages(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CompositorDumpImages}}(), this)

export ShouldAppRenderWithLowResources
ShouldAppRenderWithLowResources(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShouldAppRenderWithLowResources}}(), this)

export ForceInterleavedReprojectionOn
ForceInterleavedReprojectionOn(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ForceInterleavedReprojectionOn}}(), this, arg1)
ForceInterleavedReprojectionOn(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  ForceInterleavedReprojectionOn(
      this
    , reinterpret4cxx(Bool, arg1)
    )

export ForceReconnectProcess
ForceReconnectProcess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ForceReconnectProcess}}(), this)

export SuspendRendering
SuspendRendering(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SuspendRendering}}(), this, arg1)
SuspendRendering(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  SuspendRendering(
      this
    , reinterpret4cxx(Bool, arg1)
    )

export GetMirrorTextureD3D11
GetMirrorTextureD3D11(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  , arg2 :: Ptr{Nothing}
  , arg3 :: Ptr{Ptr{Nothing}}
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetMirrorTextureD3D11}}(), this, arg1, arg2, arg3)
GetMirrorTextureD3D11(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetMirrorTextureD3D11(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    , reinterpret4cxx(Ptr{Ptr{Nothing}}, arg3)
    )

export ReleaseMirrorTextureD3D11
ReleaseMirrorTextureD3D11(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Ptr{Nothing}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ReleaseMirrorTextureD3D11}}(), this, arg1)
ReleaseMirrorTextureD3D11(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  ReleaseMirrorTextureD3D11(
      this
    , reinterpret4cxx(Ptr{Nothing}, arg1)
    )

export GetMirrorTextureGL
GetMirrorTextureGL(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  , arg2 :: Ptr{UInt32}
  , arg3 :: Ptr{Ptr{Nothing}}
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetMirrorTextureGL}}(), this, arg1, arg2, arg3)
GetMirrorTextureGL(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetMirrorTextureGL(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    , reinterpret4cxx(Ptr{Ptr{Nothing}}, arg3)
    )

export ReleaseSharedGLTexture
ReleaseSharedGLTexture(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{Nothing}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ReleaseSharedGLTexture}}(), this, arg1, arg2)
ReleaseSharedGLTexture(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2) =
  ReleaseSharedGLTexture(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    )

export LockGLSharedTextureForAccess
LockGLSharedTextureForAccess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Ptr{Nothing}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LockGLSharedTextureForAccess}}(), this, arg1)
LockGLSharedTextureForAccess(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  LockGLSharedTextureForAccess(
      this
    , reinterpret4cxx(Ptr{Nothing}, arg1)
    )

export UnlockGLSharedTextureForAccess
UnlockGLSharedTextureForAccess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Ptr{Nothing}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :UnlockGLSharedTextureForAccess}}(), this, arg1)
UnlockGLSharedTextureForAccess(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  UnlockGLSharedTextureForAccess(
      this
    , reinterpret4cxx(Ptr{Nothing}, arg1)
    )

export GetVulkanInstanceExtensionsRequired
GetVulkanInstanceExtensionsRequired(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetVulkanInstanceExtensionsRequired}}(), this, arg1, arg2)
GetVulkanInstanceExtensionsRequired(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1, arg2) =
  GetVulkanInstanceExtensionsRequired(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export SetExplicitTimingMode
SetExplicitTimingMode(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRCompositorTimingMode"),UInt32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetExplicitTimingMode}}(), this, arg1)
SetExplicitTimingMode(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  SetExplicitTimingMode(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRCompositorTimingMode"),UInt32}, arg1)
    )

export SubmitExplicitTimingData
SubmitExplicitTimingData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SubmitExplicitTimingData}}(), this)

export IsMotionSmoothingEnabled
IsMotionSmoothingEnabled(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsMotionSmoothingEnabled}}(), this)

export CreateNotification
CreateNotification(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRNotifications")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt64
  , arg3 :: CppEnum{Symbol("vr::EVRNotificationType"),UInt32}
  , arg4 :: Ptr{UInt8}
  , arg5 :: CppEnum{Symbol("vr::EVRNotificationStyle"),UInt32}
  , arg6 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::NotificationBitmap_t")},(true, false, false)},(false, false, false)}
  , arg7 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVRNotificationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CreateNotification}}(), this, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
CreateNotification(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRNotifications")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6, arg7) =
  CreateNotification(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt64, arg2)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRNotificationType"),UInt32}, arg3)
    , reinterpret4cxx(Ptr{UInt8}, arg4)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRNotificationStyle"),UInt32}, arg5)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::NotificationBitmap_t")},(true, false, false)},(false, false, false)}, arg6)
    , reinterpret4cxx(Ptr{UInt32}, arg7)
    )

export RemoveNotification
RemoveNotification(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRNotifications")},(false, false, false)},N} where N
  , arg1 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRNotificationError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RemoveNotification}}(), this, arg1)
RemoveNotification(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRNotifications")},(false, false, false)},N} where N, arg1) =
  RemoveNotification(
      this
    , reinterpret4cxx(UInt32, arg1)
    )

export FindOverlay
FindOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt64}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :FindOverlay}}(), this, arg1, arg2)
FindOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  FindOverlay(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt64}, arg2)
    )

export CreateOverlay
CreateOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt64}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CreateOverlay}}(), this, arg1, arg2, arg3)
CreateOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  CreateOverlay(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt64}, arg3)
    )

export DestroyOverlay
DestroyOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :DestroyOverlay}}(), this, arg1)
DestroyOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  DestroyOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export SetHighQualityOverlay
SetHighQualityOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetHighQualityOverlay}}(), this, arg1)
SetHighQualityOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  SetHighQualityOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export GetHighQualityOverlay
GetHighQualityOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  )      :: UInt64 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetHighQualityOverlay}}(), this)

export GetOverlayKey
GetOverlayKey(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVROverlayError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayKey}}(), this, arg1, arg2, arg3, arg4)
GetOverlayKey(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetOverlayKey(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVROverlayError"),UInt32}}, arg4)
    )

export GetOverlayName
GetOverlayName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVROverlayError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayName}}(), this, arg1, arg2, arg3, arg4)
GetOverlayName(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetOverlayName(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVROverlayError"),UInt32}}, arg4)
    )

export SetOverlayName
SetOverlayName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayName}}(), this, arg1, arg2)
SetOverlayName(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayName(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    )

export GetOverlayImageData
GetOverlayImageData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Nothing}
  , arg3 :: UInt32
  , arg4 :: Ptr{UInt32}
  , arg5 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayImageData}}(), this, arg1, arg2, arg3, arg4, arg5)
GetOverlayImageData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetOverlayImageData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(Ptr{UInt32}, arg4)
    , reinterpret4cxx(Ptr{UInt32}, arg5)
    )

export GetOverlayErrorNameFromEnum
GetOverlayErrorNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVROverlayError"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayErrorNameFromEnum}}(), this, arg1)
GetOverlayErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  GetOverlayErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVROverlayError"),UInt32}, arg1)
    )

export SetOverlayRenderingPid
SetOverlayRenderingPid(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayRenderingPid}}(), this, arg1, arg2)
SetOverlayRenderingPid(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayRenderingPid(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export GetOverlayRenderingPid
GetOverlayRenderingPid(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayRenderingPid}}(), this, arg1)
GetOverlayRenderingPid(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  GetOverlayRenderingPid(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export SetOverlayFlag
SetOverlayFlag(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::VROverlayFlags"),UInt32}
  , arg3 :: Bool
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayFlag}}(), this, arg1, arg2, arg3)
SetOverlayFlag(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  SetOverlayFlag(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::VROverlayFlags"),UInt32}, arg2)
    , reinterpret4cxx(Bool, arg3)
    )

export GetOverlayFlag
GetOverlayFlag(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::VROverlayFlags"),UInt32}
  , arg3 :: Ptr{Bool}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayFlag}}(), this, arg1, arg2, arg3)
GetOverlayFlag(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetOverlayFlag(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::VROverlayFlags"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{Bool}, arg3)
    )

export SetOverlayColor
SetOverlayColor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Float32
  , arg3 :: Float32
  , arg4 :: Float32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayColor}}(), this, arg1, arg2, arg3, arg4)
SetOverlayColor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetOverlayColor(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Float32, arg2)
    , reinterpret4cxx(Float32, arg3)
    , reinterpret4cxx(Float32, arg4)
    )

export GetOverlayColor
GetOverlayColor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Float32}
  , arg3 :: Ptr{Float32}
  , arg4 :: Ptr{Float32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayColor}}(), this, arg1, arg2, arg3, arg4)
GetOverlayColor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetOverlayColor(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    , reinterpret4cxx(Ptr{Float32}, arg3)
    , reinterpret4cxx(Ptr{Float32}, arg4)
    )

export SetOverlayAlpha
SetOverlayAlpha(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Float32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayAlpha}}(), this, arg1, arg2)
SetOverlayAlpha(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayAlpha(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Float32, arg2)
    )

export GetOverlayAlpha
GetOverlayAlpha(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Float32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayAlpha}}(), this, arg1, arg2)
GetOverlayAlpha(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayAlpha(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    )

export SetOverlayTexelAspect
SetOverlayTexelAspect(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Float32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayTexelAspect}}(), this, arg1, arg2)
SetOverlayTexelAspect(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayTexelAspect(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Float32, arg2)
    )

export GetOverlayTexelAspect
GetOverlayTexelAspect(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Float32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTexelAspect}}(), this, arg1, arg2)
GetOverlayTexelAspect(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayTexelAspect(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    )

export SetOverlaySortOrder
SetOverlaySortOrder(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlaySortOrder}}(), this, arg1, arg2)
SetOverlaySortOrder(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlaySortOrder(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export GetOverlaySortOrder
GetOverlaySortOrder(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlaySortOrder}}(), this, arg1, arg2)
GetOverlaySortOrder(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlaySortOrder(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export SetOverlayWidthInMeters
SetOverlayWidthInMeters(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Float32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayWidthInMeters}}(), this, arg1, arg2)
SetOverlayWidthInMeters(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayWidthInMeters(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Float32, arg2)
    )

export GetOverlayWidthInMeters
GetOverlayWidthInMeters(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Float32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayWidthInMeters}}(), this, arg1, arg2)
GetOverlayWidthInMeters(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayWidthInMeters(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    )

export SetOverlayAutoCurveDistanceRangeInMeters
SetOverlayAutoCurveDistanceRangeInMeters(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Float32
  , arg3 :: Float32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayAutoCurveDistanceRangeInMeters}}(), this, arg1, arg2, arg3)
SetOverlayAutoCurveDistanceRangeInMeters(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  SetOverlayAutoCurveDistanceRangeInMeters(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Float32, arg2)
    , reinterpret4cxx(Float32, arg3)
    )

export GetOverlayAutoCurveDistanceRangeInMeters
GetOverlayAutoCurveDistanceRangeInMeters(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Float32}
  , arg3 :: Ptr{Float32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayAutoCurveDistanceRangeInMeters}}(), this, arg1, arg2, arg3)
GetOverlayAutoCurveDistanceRangeInMeters(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetOverlayAutoCurveDistanceRangeInMeters(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    , reinterpret4cxx(Ptr{Float32}, arg3)
    )

export SetOverlayTextureColorSpace
SetOverlayTextureColorSpace(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EColorSpace"),UInt32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayTextureColorSpace}}(), this, arg1, arg2)
SetOverlayTextureColorSpace(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayTextureColorSpace(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EColorSpace"),UInt32}, arg2)
    )

export GetOverlayTextureColorSpace
GetOverlayTextureColorSpace(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{CppEnum{Symbol("vr::EColorSpace"),UInt32}}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTextureColorSpace}}(), this, arg1, arg2)
GetOverlayTextureColorSpace(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayTextureColorSpace(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EColorSpace"),UInt32}}, arg2)
    )

export SetOverlayTextureBounds
SetOverlayTextureBounds(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(true, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayTextureBounds}}(), this, arg1, arg2)
SetOverlayTextureBounds(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayTextureBounds(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(true, false, false)},(false, false, false)}, arg2)
    )

export GetOverlayTextureBounds
GetOverlayTextureBounds(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTextureBounds}}(), this, arg1, arg2)
GetOverlayTextureBounds(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayTextureBounds(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(false, false, false)},(false, false, false)}, arg2)
    )

export GetOverlayRenderModel
GetOverlayRenderModel(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},(false, false, false)}
  , arg5 :: Ptr{CppEnum{Symbol("vr::EVROverlayError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayRenderModel}}(), this, arg1, arg2, arg3, arg4, arg5)
GetOverlayRenderModel(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetOverlayRenderModel(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVROverlayError"),UInt32}}, arg5)
    )

export SetOverlayRenderModel
SetOverlayRenderModel(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt8}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(true, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayRenderModel}}(), this, arg1, arg2, arg3)
SetOverlayRenderModel(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  SetOverlayRenderModel(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(true, false, false)},(false, false, false)}, arg3)
    )

export GetOverlayTransformType
GetOverlayTransformType(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{CppEnum{Symbol("vr::VROverlayTransformType"),UInt32}}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTransformType}}(), this, arg1, arg2)
GetOverlayTransformType(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayTransformType(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::VROverlayTransformType"),UInt32}}, arg2)
    )

export SetOverlayTransformAbsolute
SetOverlayTransformAbsolute(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayTransformAbsolute}}(), this, arg1, arg2, arg3)
SetOverlayTransformAbsolute(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  SetOverlayTransformAbsolute(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}, arg3)
    )

export GetOverlayTransformAbsolute
GetOverlayTransformAbsolute(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTransformAbsolute}}(), this, arg1, arg2, arg3)
GetOverlayTransformAbsolute(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetOverlayTransformAbsolute(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}, arg3)
    )

export SetOverlayTransformTrackedDeviceRelative
SetOverlayTransformTrackedDeviceRelative(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt32
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayTransformTrackedDeviceRelative}}(), this, arg1, arg2, arg3)
SetOverlayTransformTrackedDeviceRelative(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  SetOverlayTransformTrackedDeviceRelative(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}, arg3)
    )

export GetOverlayTransformTrackedDeviceRelative
GetOverlayTransformTrackedDeviceRelative(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTransformTrackedDeviceRelative}}(), this, arg1, arg2, arg3)
GetOverlayTransformTrackedDeviceRelative(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetOverlayTransformTrackedDeviceRelative(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}, arg3)
    )

export SetOverlayTransformTrackedDeviceComponent
SetOverlayTransformTrackedDeviceComponent(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt32
  , arg3 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayTransformTrackedDeviceComponent}}(), this, arg1, arg2, arg3)
SetOverlayTransformTrackedDeviceComponent(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  SetOverlayTransformTrackedDeviceComponent(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    )

export GetOverlayTransformTrackedDeviceComponent
GetOverlayTransformTrackedDeviceComponent(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt32}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTransformTrackedDeviceComponent}}(), this, arg1, arg2, arg3, arg4)
GetOverlayTransformTrackedDeviceComponent(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetOverlayTransformTrackedDeviceComponent(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetOverlayTransformOverlayRelative
GetOverlayTransformOverlayRelative(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt64}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTransformOverlayRelative}}(), this, arg1, arg2, arg3)
GetOverlayTransformOverlayRelative(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetOverlayTransformOverlayRelative(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt64}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}, arg3)
    )

export SetOverlayTransformOverlayRelative
SetOverlayTransformOverlayRelative(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt64
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayTransformOverlayRelative}}(), this, arg1, arg2, arg3)
SetOverlayTransformOverlayRelative(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  SetOverlayTransformOverlayRelative(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt64, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}, arg3)
    )

export ShowOverlay
ShowOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowOverlay}}(), this, arg1)
ShowOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  ShowOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export HideOverlay
HideOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :HideOverlay}}(), this, arg1)
HideOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  HideOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export IsOverlayVisible
IsOverlayVisible(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsOverlayVisible}}(), this, arg1)
IsOverlayVisible(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  IsOverlayVisible(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export GetTransformForOverlayCoordinates
GetTransformForOverlayCoordinates(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg3 :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},N} where N
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetTransformForOverlayCoordinates}}(), this, arg1, arg2, arg3, arg4)
GetTransformForOverlayCoordinates(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetTransformForOverlayCoordinates(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg2)
    , reinterpret4cxx(CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},N} where N, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},(false, false, false)}, arg4)
    )

export PollNextOverlayEvent
PollNextOverlayEvent(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VREvent_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :PollNextOverlayEvent}}(), this, arg1, arg2, arg3)
PollNextOverlayEvent(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  PollNextOverlayEvent(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VREvent_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetOverlayInputMethod
GetOverlayInputMethod(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{CppEnum{Symbol("vr::VROverlayInputMethod"),UInt32}}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayInputMethod}}(), this, arg1, arg2)
GetOverlayInputMethod(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayInputMethod(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::VROverlayInputMethod"),UInt32}}, arg2)
    )

export SetOverlayInputMethod
SetOverlayInputMethod(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::VROverlayInputMethod"),UInt32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayInputMethod}}(), this, arg1, arg2)
SetOverlayInputMethod(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayInputMethod(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::VROverlayInputMethod"),UInt32}, arg2)
    )

export GetOverlayMouseScale
GetOverlayMouseScale(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayMouseScale}}(), this, arg1, arg2)
GetOverlayMouseScale(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayMouseScale(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}, arg2)
    )

export SetOverlayMouseScale
SetOverlayMouseScale(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(true, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayMouseScale}}(), this, arg1, arg2)
SetOverlayMouseScale(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayMouseScale(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(true, false, false)},(false, false, false)}, arg2)
    )

export ComputeOverlayIntersection
ComputeOverlayIntersection(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VROverlayIntersectionParams_t")},(true, false, false)},(false, false, false)}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VROverlayIntersectionResults_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ComputeOverlayIntersection}}(), this, arg1, arg2, arg3)
ComputeOverlayIntersection(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  ComputeOverlayIntersection(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VROverlayIntersectionParams_t")},(true, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VROverlayIntersectionResults_t")},(false, false, false)},(false, false, false)}, arg3)
    )

export IsHoverTargetOverlay
IsHoverTargetOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsHoverTargetOverlay}}(), this, arg1)
IsHoverTargetOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  IsHoverTargetOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export GetGamepadFocusOverlay
GetGamepadFocusOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  )      :: UInt64 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetGamepadFocusOverlay}}(), this)

export SetGamepadFocusOverlay
SetGamepadFocusOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetGamepadFocusOverlay}}(), this, arg1)
SetGamepadFocusOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  SetGamepadFocusOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export SetOverlayNeighbor
SetOverlayNeighbor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EOverlayDirection"),UInt32}
  , arg2 :: UInt64
  , arg3 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayNeighbor}}(), this, arg1, arg2, arg3)
SetOverlayNeighbor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  SetOverlayNeighbor(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EOverlayDirection"),UInt32}, arg1)
    , reinterpret4cxx(UInt64, arg2)
    , reinterpret4cxx(UInt64, arg3)
    )

export MoveGamepadFocusToNeighbor
MoveGamepadFocusToNeighbor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EOverlayDirection"),UInt32}
  , arg2 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :MoveGamepadFocusToNeighbor}}(), this, arg1, arg2)
MoveGamepadFocusToNeighbor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  MoveGamepadFocusToNeighbor(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EOverlayDirection"),UInt32}, arg1)
    , reinterpret4cxx(UInt64, arg2)
    )

export SetOverlayDualAnalogTransform
SetOverlayDualAnalogTransform(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EDualAnalogWhich"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(true, false, false)},(false, false, false)}
  , arg4 :: Float32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayDualAnalogTransform}}(), this, arg1, arg2, arg3, arg4)
SetOverlayDualAnalogTransform(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetOverlayDualAnalogTransform(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EDualAnalogWhich"),UInt32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(true, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(Float32, arg4)
    )

export GetOverlayDualAnalogTransform
GetOverlayDualAnalogTransform(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EDualAnalogWhich"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}
  , arg4 :: Ptr{Float32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayDualAnalogTransform}}(), this, arg1, arg2, arg3, arg4)
GetOverlayDualAnalogTransform(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetOverlayDualAnalogTransform(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EDualAnalogWhich"),UInt32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(Ptr{Float32}, arg4)
    )

export SetOverlayTexture
SetOverlayTexture(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Texture_t")},(true, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayTexture}}(), this, arg1, arg2)
SetOverlayTexture(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayTexture(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::Texture_t")},(true, false, false)},(false, false, false)}, arg2)
    )

export ClearOverlayTexture
ClearOverlayTexture(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ClearOverlayTexture}}(), this, arg1)
ClearOverlayTexture(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  ClearOverlayTexture(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export SetOverlayRaw
SetOverlayRaw(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Nothing}
  , arg3 :: UInt32
  , arg4 :: UInt32
  , arg5 :: UInt32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayRaw}}(), this, arg1, arg2, arg3, arg4, arg5)
SetOverlayRaw(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  SetOverlayRaw(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(UInt32, arg5)
    )

export SetOverlayFromFile
SetOverlayFromFile(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayFromFile}}(), this, arg1, arg2)
SetOverlayFromFile(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetOverlayFromFile(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    )

export GetOverlayTexture
GetOverlayTexture(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Ptr{Nothing}}
  , arg3 :: Ptr{Nothing}
  , arg4 :: Ptr{UInt32}
  , arg5 :: Ptr{UInt32}
  , arg6 :: Ptr{UInt32}
  , arg7 :: Ptr{CppEnum{Symbol("vr::ETextureType"),Int32}}
  , arg8 :: Ptr{CppEnum{Symbol("vr::EColorSpace"),UInt32}}
  , arg9 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTexture}}(), this, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
GetOverlayTexture(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) =
  GetOverlayTexture(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Ptr{Nothing}}, arg2)
    , reinterpret4cxx(Ptr{Nothing}, arg3)
    , reinterpret4cxx(Ptr{UInt32}, arg4)
    , reinterpret4cxx(Ptr{UInt32}, arg5)
    , reinterpret4cxx(Ptr{UInt32}, arg6)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::ETextureType"),Int32}}, arg7)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EColorSpace"),UInt32}}, arg8)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(false, false, false)},(false, false, false)}, arg9)
    )

export ReleaseNativeOverlayHandle
ReleaseNativeOverlayHandle(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Nothing}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ReleaseNativeOverlayHandle}}(), this, arg1, arg2)
ReleaseNativeOverlayHandle(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  ReleaseNativeOverlayHandle(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    )

export GetOverlayTextureSize
GetOverlayTextureSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt32}
  , arg3 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayTextureSize}}(), this, arg1, arg2, arg3)
GetOverlayTextureSize(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetOverlayTextureSize(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt32}, arg3)
    )

export CreateDashboardOverlay
CreateDashboardOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt64}
  , arg4 :: Ptr{UInt64}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CreateDashboardOverlay}}(), this, arg1, arg2, arg3, arg4)
CreateDashboardOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  CreateDashboardOverlay(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt64}, arg3)
    , reinterpret4cxx(Ptr{UInt64}, arg4)
    )

export IsDashboardVisible
IsDashboardVisible(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsDashboardVisible}}(), this)

export IsActiveDashboardOverlay
IsActiveDashboardOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :IsActiveDashboardOverlay}}(), this, arg1)
IsActiveDashboardOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  IsActiveDashboardOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export SetDashboardOverlaySceneProcess
SetDashboardOverlaySceneProcess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetDashboardOverlaySceneProcess}}(), this, arg1, arg2)
SetDashboardOverlaySceneProcess(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetDashboardOverlaySceneProcess(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export GetDashboardOverlaySceneProcess
GetDashboardOverlaySceneProcess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDashboardOverlaySceneProcess}}(), this, arg1, arg2)
GetDashboardOverlaySceneProcess(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetDashboardOverlaySceneProcess(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export ShowDashboard
ShowDashboard(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowDashboard}}(), this, arg1)
ShowDashboard(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  ShowDashboard(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export GetPrimaryDashboardDevice
GetPrimaryDashboardDevice(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetPrimaryDashboardDevice}}(), this)

export ShowKeyboard
ShowKeyboard(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EGamepadTextInputMode"),UInt32}
  , arg2 :: CppEnum{Symbol("vr::EGamepadTextInputLineMode"),UInt32}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  , arg5 :: Ptr{UInt8}
  , arg6 :: Bool
  , arg7 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowKeyboard}}(), this, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
ShowKeyboard(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6, arg7) =
  ShowKeyboard(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EGamepadTextInputMode"),UInt32}, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EGamepadTextInputLineMode"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(Ptr{UInt8}, arg5)
    , reinterpret4cxx(Bool, arg6)
    , reinterpret4cxx(UInt64, arg7)
    )

export ShowKeyboardForOverlay
ShowKeyboardForOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EGamepadTextInputMode"),UInt32}
  , arg3 :: CppEnum{Symbol("vr::EGamepadTextInputLineMode"),UInt32}
  , arg4 :: Ptr{UInt8}
  , arg5 :: UInt32
  , arg6 :: Ptr{UInt8}
  , arg7 :: Bool
  , arg8 :: UInt64
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowKeyboardForOverlay}}(), this, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
ShowKeyboardForOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) =
  ShowKeyboardForOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EGamepadTextInputMode"),UInt32}, arg2)
    , reinterpret4cxx(CppEnum{Symbol("vr::EGamepadTextInputLineMode"),UInt32}, arg3)
    , reinterpret4cxx(Ptr{UInt8}, arg4)
    , reinterpret4cxx(UInt32, arg5)
    , reinterpret4cxx(Ptr{UInt8}, arg6)
    , reinterpret4cxx(Bool, arg7)
    , reinterpret4cxx(UInt64, arg8)
    )

export GetKeyboardText
GetKeyboardText(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetKeyboardText}}(), this, arg1, arg2)
GetKeyboardText(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetKeyboardText(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export HideKeyboard
HideKeyboard(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :HideKeyboard}}(), this)

export SetKeyboardTransformAbsolute
SetKeyboardTransformAbsolute(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetKeyboardTransformAbsolute}}(), this, arg1, arg2)
SetKeyboardTransformAbsolute(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetKeyboardTransformAbsolute(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}, arg2)
    )

export SetKeyboardPositionForOverlay
SetKeyboardPositionForOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdRect2_t")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetKeyboardPositionForOverlay}}(), this, arg1, arg2)
SetKeyboardPositionForOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  SetKeyboardPositionForOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdRect2_t")},(false, false, false)},N} where N, arg2)
    )

export SetOverlayIntersectionMask
SetOverlayIntersectionMask(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VROverlayIntersectionMaskPrimitive_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  , arg4 :: UInt32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetOverlayIntersectionMask}}(), this, arg1, arg2, arg3, arg4)
SetOverlayIntersectionMask(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SetOverlayIntersectionMask(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VROverlayIntersectionMaskPrimitive_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetOverlayFlags
GetOverlayFlags(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOverlayFlags}}(), this, arg1, arg2)
GetOverlayFlags(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayFlags(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export ShowMessageOverlay
ShowMessageOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  , arg4 :: Ptr{UInt8}
  , arg5 :: Ptr{UInt8}
  , arg6 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::VRMessageOverlayResponse"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowMessageOverlay}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
ShowMessageOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6) =
  ShowMessageOverlay(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(Ptr{UInt8}, arg4)
    , reinterpret4cxx(Ptr{UInt8}, arg5)
    , reinterpret4cxx(Ptr{UInt8}, arg6)
    )

export CloseMessageOverlay
CloseMessageOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CloseMessageOverlay}}(), this)

export LoadRenderModel_Async
LoadRenderModel_Async(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: CppPtr{CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_t")},(false, false, false)},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRRenderModelError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LoadRenderModel_Async}}(), this, arg1, arg2)
LoadRenderModel_Async(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2) =
  LoadRenderModel_Async(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(CppPtr{CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_t")},(false, false, false)},(false, false, false)},(false, false, false)}, arg2)
    )

export FreeRenderModel
FreeRenderModel(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_t")},(false, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :FreeRenderModel}}(), this, arg1)
FreeRenderModel(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1) =
  FreeRenderModel(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_t")},(false, false, false)},(false, false, false)}, arg1)
    )

export LoadTexture_Async
LoadTexture_Async(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Int32
  , arg2 :: CppPtr{CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_TextureMap_t")},(false, false, false)},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRRenderModelError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LoadTexture_Async}}(), this, arg1, arg2)
LoadTexture_Async(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2) =
  LoadTexture_Async(
      this
    , reinterpret4cxx(Int32, arg1)
    , reinterpret4cxx(CppPtr{CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_TextureMap_t")},(false, false, false)},(false, false, false)},(false, false, false)}, arg2)
    )

export FreeTexture
FreeTexture(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_TextureMap_t")},(false, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :FreeTexture}}(), this, arg1)
FreeTexture(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1) =
  FreeTexture(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_TextureMap_t")},(false, false, false)},(false, false, false)}, arg1)
    )

export LoadTextureD3D11_Async
LoadTextureD3D11_Async(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Int32
  , arg2 :: Ptr{Nothing}
  , arg3 :: Ptr{Ptr{Nothing}}
  )      :: CppEnum{Symbol("vr::EVRRenderModelError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LoadTextureD3D11_Async}}(), this, arg1, arg2, arg3)
LoadTextureD3D11_Async(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  LoadTextureD3D11_Async(
      this
    , reinterpret4cxx(Int32, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    , reinterpret4cxx(Ptr{Ptr{Nothing}}, arg3)
    )

export LoadIntoTextureD3D11_Async
LoadIntoTextureD3D11_Async(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Int32
  , arg2 :: Ptr{Nothing}
  )      :: CppEnum{Symbol("vr::EVRRenderModelError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LoadIntoTextureD3D11_Async}}(), this, arg1, arg2)
LoadIntoTextureD3D11_Async(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2) =
  LoadIntoTextureD3D11_Async(
      this
    , reinterpret4cxx(Int32, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    )

export FreeTextureD3D11
FreeTextureD3D11(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{Nothing}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :FreeTextureD3D11}}(), this, arg1)
FreeTextureD3D11(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1) =
  FreeTextureD3D11(
      this
    , reinterpret4cxx(Ptr{Nothing}, arg1)
    )

export GetRenderModelName
GetRenderModelName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetRenderModelName}}(), this, arg1, arg2, arg3)
GetRenderModelName(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetRenderModelName(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetRenderModelCount
GetRenderModelCount(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetRenderModelCount}}(), this)

export GetComponentCount
GetComponentCount(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetComponentCount}}(), this, arg1)
GetComponentCount(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1) =
  GetComponentCount(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export GetComponentName
GetComponentName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: UInt32
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetComponentName}}(), this, arg1, arg2, arg3, arg4)
GetComponentName(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetComponentName(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetComponentButtonMask
GetComponentButtonMask(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  )      :: UInt64 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetComponentButtonMask}}(), this, arg1, arg2)
GetComponentButtonMask(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2) =
  GetComponentButtonMask(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    )

export GetComponentRenderModelName
GetComponentRenderModelName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetComponentRenderModelName}}(), this, arg1, arg2, arg3, arg4)
GetComponentRenderModelName(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetComponentRenderModelName(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetComponentStateForDevicePath
GetComponentStateForDevicePath(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt64
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_ControllerMode_State_t")},(true, false, false)},(false, false, false)}
  , arg5 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_ComponentState_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetComponentStateForDevicePath}}(), this, arg1, arg2, arg3, arg4, arg5)
GetComponentStateForDevicePath(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetComponentStateForDevicePath(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt64, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_ControllerMode_State_t")},(true, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_ComponentState_t")},(false, false, false)},(false, false, false)}, arg5)
    )

export GetComponentState
GetComponentState(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRControllerState001_t")},(true, false, false)},(false, false, false)}
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_ControllerMode_State_t")},(true, false, false)},(false, false, false)}
  , arg5 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_ComponentState_t")},(false, false, false)},(false, false, false)}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetComponentState}}(), this, arg1, arg2, arg3, arg4, arg5)
GetComponentState(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetComponentState(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRControllerState001_t")},(true, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_ControllerMode_State_t")},(true, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_ComponentState_t")},(false, false, false)},(false, false, false)}, arg5)
    )

export RenderModelHasComponent
RenderModelHasComponent(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  )      :: Bool =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RenderModelHasComponent}}(), this, arg1, arg2)
RenderModelHasComponent(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2) =
  RenderModelHasComponent(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    )

export GetRenderModelThumbnailURL
GetRenderModelThumbnailURL(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRRenderModelError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetRenderModelThumbnailURL}}(), this, arg1, arg2, arg3, arg4)
GetRenderModelThumbnailURL(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetRenderModelThumbnailURL(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRRenderModelError"),UInt32}}, arg4)
    )

export GetRenderModelOriginalPath
GetRenderModelOriginalPath(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRRenderModelError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetRenderModelOriginalPath}}(), this, arg1, arg2, arg3, arg4)
GetRenderModelOriginalPath(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetRenderModelOriginalPath(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRRenderModelError"),UInt32}}, arg4)
    )

export GetRenderModelErrorNameFromEnum
GetRenderModelErrorNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRRenderModelError"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetRenderModelErrorNameFromEnum}}(), this, arg1)
GetRenderModelErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N, arg1) =
  GetRenderModelErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRRenderModelError"),UInt32}, arg1)
    )

export GetWindowBounds
GetWindowBounds(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},N} where N
  , arg1 :: Ptr{Int32}
  , arg2 :: Ptr{Int32}
  , arg3 :: Ptr{UInt32}
  , arg4 :: Ptr{UInt32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetWindowBounds}}(), this, arg1, arg2, arg3, arg4)
GetWindowBounds(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetWindowBounds(
      this
    , reinterpret4cxx(Ptr{Int32}, arg1)
    , reinterpret4cxx(Ptr{Int32}, arg2)
    , reinterpret4cxx(Ptr{UInt32}, arg3)
    , reinterpret4cxx(Ptr{UInt32}, arg4)
    )

export GetEyeOutputViewport
GetEyeOutputViewport(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVREye"),UInt32}
  , arg2 :: Ptr{UInt32}
  , arg3 :: Ptr{UInt32}
  , arg4 :: Ptr{UInt32}
  , arg5 :: Ptr{UInt32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetEyeOutputViewport}}(), this, arg1, arg2, arg3, arg4, arg5)
GetEyeOutputViewport(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetEyeOutputViewport(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVREye"),UInt32}, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt32}, arg3)
    , reinterpret4cxx(Ptr{UInt32}, arg4)
    , reinterpret4cxx(Ptr{UInt32}, arg5)
    )

export GetDXGIOutputInfo
GetDXGIOutputInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},N} where N
  , arg1 :: Ptr{Int32}
  , arg2 :: Ptr{Int32}
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDXGIOutputInfo}}(), this, arg1, arg2)
GetDXGIOutputInfo(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},N} where N, arg1, arg2) =
  GetDXGIOutputInfo(
      this
    , reinterpret4cxx(Ptr{Int32}, arg1)
    , reinterpret4cxx(Ptr{Int32}, arg2)
    )

export GetCameraErrorNameFromEnum
GetCameraErrorNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCameraErrorNameFromEnum}}(), this, arg1)
GetCameraErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1) =
  GetCameraErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32}, arg1)
    )

export HasCamera
HasCamera(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{Bool}
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :HasCamera}}(), this, arg1, arg2)
HasCamera(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2) =
  HasCamera(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{Bool}, arg2)
    )

export GetCameraFrameSize
GetCameraFrameSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}
  , arg3 :: Ptr{UInt32}
  , arg4 :: Ptr{UInt32}
  , arg5 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCameraFrameSize}}(), this, arg1, arg2, arg3, arg4, arg5)
GetCameraFrameSize(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetCameraFrameSize(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt32}, arg3)
    , reinterpret4cxx(Ptr{UInt32}, arg4)
    , reinterpret4cxx(Ptr{UInt32}, arg5)
    )

export GetCameraIntrinsics
GetCameraIntrinsics(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: UInt32
  , arg3 :: CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}
  , arg5 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCameraIntrinsics}}(), this, arg1, arg2, arg3, arg4, arg5)
GetCameraIntrinsics(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetCameraIntrinsics(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(false, false, false)},(false, false, false)}, arg5)
    )

export GetCameraProjection
GetCameraProjection(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: UInt32
  , arg3 :: CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}
  , arg4 :: Float32
  , arg5 :: Float32
  , arg6 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix44_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetCameraProjection}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
GetCameraProjection(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6) =
  GetCameraProjection(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}, arg3)
    , reinterpret4cxx(Float32, arg4)
    , reinterpret4cxx(Float32, arg5)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix44_t")},(false, false, false)},(false, false, false)}, arg6)
    )

export AcquireVideoStreamingService
AcquireVideoStreamingService(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt64}
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :AcquireVideoStreamingService}}(), this, arg1, arg2)
AcquireVideoStreamingService(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2) =
  AcquireVideoStreamingService(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt64}, arg2)
    )

export ReleaseVideoStreamingService
ReleaseVideoStreamingService(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ReleaseVideoStreamingService}}(), this, arg1)
ReleaseVideoStreamingService(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1) =
  ReleaseVideoStreamingService(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export GetVideoStreamFrameBuffer
GetVideoStreamFrameBuffer(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}
  , arg3 :: Ptr{Nothing}
  , arg4 :: UInt32
  , arg5 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CameraVideoStreamFrameHeader_t")},(false, false, false)},(false, false, false)}
  , arg6 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetVideoStreamFrameBuffer}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
GetVideoStreamFrameBuffer(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6) =
  GetVideoStreamFrameBuffer(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{Nothing}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::CameraVideoStreamFrameHeader_t")},(false, false, false)},(false, false, false)}, arg5)
    , reinterpret4cxx(UInt32, arg6)
    )

export GetVideoStreamTextureSize
GetVideoStreamTextureSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(false, false, false)},(false, false, false)}
  , arg4 :: Ptr{UInt32}
  , arg5 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetVideoStreamTextureSize}}(), this, arg1, arg2, arg3, arg4, arg5)
GetVideoStreamTextureSize(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetVideoStreamTextureSize(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRTextureBounds_t")},(false, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(Ptr{UInt32}, arg4)
    , reinterpret4cxx(Ptr{UInt32}, arg5)
    )

export GetVideoStreamTextureD3D11
GetVideoStreamTextureD3D11(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}
  , arg3 :: Ptr{Nothing}
  , arg4 :: Ptr{Ptr{Nothing}}
  , arg5 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CameraVideoStreamFrameHeader_t")},(false, false, false)},(false, false, false)}
  , arg6 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetVideoStreamTextureD3D11}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
GetVideoStreamTextureD3D11(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6) =
  GetVideoStreamTextureD3D11(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{Nothing}, arg3)
    , reinterpret4cxx(Ptr{Ptr{Nothing}}, arg4)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::CameraVideoStreamFrameHeader_t")},(false, false, false)},(false, false, false)}, arg5)
    , reinterpret4cxx(UInt32, arg6)
    )

export GetVideoStreamTextureGL
GetVideoStreamTextureGL(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}
  , arg3 :: Ptr{UInt32}
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CameraVideoStreamFrameHeader_t")},(false, false, false)},(false, false, false)}
  , arg5 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetVideoStreamTextureGL}}(), this, arg1, arg2, arg3, arg4, arg5)
GetVideoStreamTextureGL(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetVideoStreamTextureGL(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRTrackedCameraFrameType"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt32}, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::CameraVideoStreamFrameHeader_t")},(false, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(UInt32, arg5)
    )

export ReleaseVideoStreamTextureGL
ReleaseVideoStreamTextureGL(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRTrackedCameraError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ReleaseVideoStreamTextureGL}}(), this, arg1, arg2)
ReleaseVideoStreamTextureGL(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N, arg1, arg2) =
  ReleaseVideoStreamTextureGL(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export RequestScreenshot
RequestScreenshot(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt32}
  , arg2 :: CppEnum{Symbol("vr::EVRScreenshotType"),UInt32}
  , arg3 :: Ptr{UInt8}
  , arg4 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRScreenshotError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :RequestScreenshot}}(), this, arg1, arg2, arg3, arg4)
RequestScreenshot(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  RequestScreenshot(
      this
    , reinterpret4cxx(Ptr{UInt32}, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRScreenshotType"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(Ptr{UInt8}, arg4)
    )

export HookScreenshot
HookScreenshot(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N
  , arg1 :: Ptr{CppEnum{Symbol("vr::EVRScreenshotType"),UInt32}}
  , arg2 :: Int32
  )      :: CppEnum{Symbol("vr::EVRScreenshotError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :HookScreenshot}}(), this, arg1, arg2)
HookScreenshot(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N, arg1, arg2) =
  HookScreenshot(
      this
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRScreenshotType"),UInt32}}, arg1)
    , reinterpret4cxx(Int32, arg2)
    )

export GetScreenshotPropertyType
GetScreenshotPropertyType(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{CppEnum{Symbol("vr::EVRScreenshotError"),UInt32}}
  )      :: CppEnum{Symbol("vr::EVRScreenshotType"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetScreenshotPropertyType}}(), this, arg1, arg2)
GetScreenshotPropertyType(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N, arg1, arg2) =
  GetScreenshotPropertyType(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRScreenshotError"),UInt32}}, arg2)
    )

export GetScreenshotPropertyFilename
GetScreenshotPropertyFilename(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::EVRScreenshotPropertyFilenames"),UInt32}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  , arg5 :: Ptr{CppEnum{Symbol("vr::EVRScreenshotError"),UInt32}}
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetScreenshotPropertyFilename}}(), this, arg1, arg2, arg3, arg4, arg5)
GetScreenshotPropertyFilename(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetScreenshotPropertyFilename(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRScreenshotPropertyFilenames"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRScreenshotError"),UInt32}}, arg5)
    )

export UpdateScreenshotProgress
UpdateScreenshotProgress(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Float32
  )      :: CppEnum{Symbol("vr::EVRScreenshotError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :UpdateScreenshotProgress}}(), this, arg1, arg2)
UpdateScreenshotProgress(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N, arg1, arg2) =
  UpdateScreenshotProgress(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Float32, arg2)
    )

export TakeStereoScreenshot
TakeStereoScreenshot(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt32}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRScreenshotError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :TakeStereoScreenshot}}(), this, arg1, arg2, arg3)
TakeStereoScreenshot(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  TakeStereoScreenshot(
      this
    , reinterpret4cxx(Ptr{UInt32}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    )

export SubmitScreenshot
SubmitScreenshot(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::EVRScreenshotType"),UInt32}
  , arg3 :: Ptr{UInt8}
  , arg4 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRScreenshotError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SubmitScreenshot}}(), this, arg1, arg2, arg3, arg4)
SubmitScreenshot(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  SubmitScreenshot(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRScreenshotType"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(Ptr{UInt8}, arg4)
    )

export LoadSharedResource
LoadSharedResource(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRResources")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :LoadSharedResource}}(), this, arg1, arg2, arg3)
LoadSharedResource(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRResources")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  LoadSharedResource(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetResourceFullPath
GetResourceFullPath(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRResources")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetResourceFullPath}}(), this, arg1, arg2, arg3, arg4)
GetResourceFullPath(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRResources")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetResourceFullPath(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetDriverCount
GetDriverCount(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDriverCount}}(), this)

export GetDriverName
GetDriverName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: UInt32 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDriverName}}(), this, arg1, arg2, arg3)
GetDriverName(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetDriverName(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetDriverHandle
GetDriverHandle(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: UInt64 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDriverHandle}}(), this, arg1)
GetDriverHandle(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},N} where N, arg1) =
  GetDriverHandle(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export SetActionManifestPath
SetActionManifestPath(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :SetActionManifestPath}}(), this, arg1)
SetActionManifestPath(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1) =
  SetActionManifestPath(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export GetActionSetHandle
GetActionSetHandle(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt64}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetActionSetHandle}}(), this, arg1, arg2)
GetActionSetHandle(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2) =
  GetActionSetHandle(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt64}, arg2)
    )

export GetActionHandle
GetActionHandle(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt64}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetActionHandle}}(), this, arg1, arg2)
GetActionHandle(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2) =
  GetActionHandle(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt64}, arg2)
    )

export GetInputSourceHandle
GetInputSourceHandle(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt64}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetInputSourceHandle}}(), this, arg1, arg2)
GetInputSourceHandle(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2) =
  GetInputSourceHandle(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt64}, arg2)
    )

export UpdateActionState
UpdateActionState(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRActiveActionSet_t")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :UpdateActionState}}(), this, arg1, arg2, arg3)
UpdateActionState(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  UpdateActionState(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRActiveActionSet_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetDigitalActionData
GetDigitalActionData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputDigitalActionData_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  , arg4 :: UInt64
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetDigitalActionData}}(), this, arg1, arg2, arg3, arg4)
GetDigitalActionData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetDigitalActionData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputDigitalActionData_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(UInt64, arg4)
    )

export GetAnalogActionData
GetAnalogActionData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputAnalogActionData_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  , arg4 :: UInt64
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetAnalogActionData}}(), this, arg1, arg2, arg3, arg4)
GetAnalogActionData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetAnalogActionData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputAnalogActionData_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(UInt64, arg4)
    )

export GetPoseActionData
GetPoseActionData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg3 :: Float32
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputPoseActionData_t")},(false, false, false)},(false, false, false)}
  , arg5 :: UInt32
  , arg6 :: UInt64
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetPoseActionData}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
GetPoseActionData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6) =
  GetPoseActionData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg2)
    , reinterpret4cxx(Float32, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputPoseActionData_t")},(false, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(UInt32, arg5)
    , reinterpret4cxx(UInt64, arg6)
    )

export GetSkeletalActionData
GetSkeletalActionData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputSkeletalActionData_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSkeletalActionData}}(), this, arg1, arg2, arg3)
GetSkeletalActionData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetSkeletalActionData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputSkeletalActionData_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetBoneCount
GetBoneCount(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetBoneCount}}(), this, arg1, arg2)
GetBoneCount(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2) =
  GetBoneCount(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export GetBoneHierarchy
GetBoneHierarchy(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Int32}
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetBoneHierarchy}}(), this, arg1, arg2, arg3)
GetBoneHierarchy(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetBoneHierarchy(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Int32}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export GetBoneName
GetBoneName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Int32
  , arg3 :: Ptr{UInt8}
  , arg4 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetBoneName}}(), this, arg1, arg2, arg3, arg4)
GetBoneName(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetBoneName(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Int32, arg2)
    , reinterpret4cxx(Ptr{UInt8}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetSkeletalReferenceTransforms
GetSkeletalReferenceTransforms(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EVRSkeletalTransformSpace"),UInt32}
  , arg3 :: CppEnum{Symbol("vr::EVRSkeletalReferencePose"),UInt32}
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRBoneTransform_t")},(false, false, false)},(false, false, false)}
  , arg5 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSkeletalReferenceTransforms}}(), this, arg1, arg2, arg3, arg4, arg5)
GetSkeletalReferenceTransforms(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetSkeletalReferenceTransforms(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSkeletalTransformSpace"),UInt32}, arg2)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSkeletalReferencePose"),UInt32}, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRBoneTransform_t")},(false, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(UInt32, arg5)
    )

export GetSkeletalTrackingLevel
GetSkeletalTrackingLevel(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{CppEnum{Symbol("vr::EVRSkeletalTrackingLevel"),UInt32}}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSkeletalTrackingLevel}}(), this, arg1, arg2)
GetSkeletalTrackingLevel(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2) =
  GetSkeletalTrackingLevel(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::EVRSkeletalTrackingLevel"),UInt32}}, arg2)
    )

export GetSkeletalBoneData
GetSkeletalBoneData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EVRSkeletalTransformSpace"),UInt32}
  , arg3 :: CppEnum{Symbol("vr::EVRSkeletalMotionRange"),UInt32}
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRBoneTransform_t")},(false, false, false)},(false, false, false)}
  , arg5 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSkeletalBoneData}}(), this, arg1, arg2, arg3, arg4, arg5)
GetSkeletalBoneData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetSkeletalBoneData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSkeletalTransformSpace"),UInt32}, arg2)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSkeletalMotionRange"),UInt32}, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRBoneTransform_t")},(false, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(UInt32, arg5)
    )

export GetSkeletalSummaryData
GetSkeletalSummaryData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRSkeletalSummaryData_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSkeletalSummaryData}}(), this, arg1, arg2)
GetSkeletalSummaryData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2) =
  GetSkeletalSummaryData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRSkeletalSummaryData_t")},(false, false, false)},(false, false, false)}, arg2)
    )

export GetSkeletalBoneDataCompressed
GetSkeletalBoneDataCompressed(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EVRSkeletalMotionRange"),UInt32}
  , arg3 :: Ptr{Nothing}
  , arg4 :: UInt32
  , arg5 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSkeletalBoneDataCompressed}}(), this, arg1, arg2, arg3, arg4, arg5)
GetSkeletalBoneDataCompressed(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  GetSkeletalBoneDataCompressed(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSkeletalMotionRange"),UInt32}, arg2)
    , reinterpret4cxx(Ptr{Nothing}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(Ptr{UInt32}, arg5)
    )

export DecompressSkeletalBoneData
DecompressSkeletalBoneData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: Ptr{Nothing}
  , arg2 :: UInt32
  , arg3 :: CppEnum{Symbol("vr::EVRSkeletalTransformSpace"),UInt32}
  , arg4 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRBoneTransform_t")},(false, false, false)},(false, false, false)}
  , arg5 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :DecompressSkeletalBoneData}}(), this, arg1, arg2, arg3, arg4, arg5)
DecompressSkeletalBoneData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  DecompressSkeletalBoneData(
      this
    , reinterpret4cxx(Ptr{Nothing}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSkeletalTransformSpace"),UInt32}, arg3)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRBoneTransform_t")},(false, false, false)},(false, false, false)}, arg4)
    , reinterpret4cxx(UInt32, arg5)
    )

export TriggerHapticVibrationAction
TriggerHapticVibrationAction(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Float32
  , arg3 :: Float32
  , arg4 :: Float32
  , arg5 :: Float32
  , arg6 :: UInt64
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :TriggerHapticVibrationAction}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
TriggerHapticVibrationAction(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5, arg6) =
  TriggerHapticVibrationAction(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Float32, arg2)
    , reinterpret4cxx(Float32, arg3)
    , reinterpret4cxx(Float32, arg4)
    , reinterpret4cxx(Float32, arg5)
    , reinterpret4cxx(UInt64, arg6)
    )

export GetActionOrigins
GetActionOrigins(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt64
  , arg3 :: Ptr{UInt64}
  , arg4 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetActionOrigins}}(), this, arg1, arg2, arg3, arg4)
GetActionOrigins(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetActionOrigins(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt64, arg2)
    , reinterpret4cxx(Ptr{UInt64}, arg3)
    , reinterpret4cxx(UInt32, arg4)
    )

export GetOriginLocalizedName
GetOriginLocalizedName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  , arg4 :: Int32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOriginLocalizedName}}(), this, arg1, arg2, arg3, arg4)
GetOriginLocalizedName(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetOriginLocalizedName(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(Int32, arg4)
    )

export GetOriginTrackedDeviceInfo
GetOriginTrackedDeviceInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputOriginInfo_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetOriginTrackedDeviceInfo}}(), this, arg1, arg2, arg3)
GetOriginTrackedDeviceInfo(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetOriginTrackedDeviceInfo(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputOriginInfo_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export ShowActionOrigins
ShowActionOrigins(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: UInt64
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowActionOrigins}}(), this, arg1, arg2)
ShowActionOrigins(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2) =
  ShowActionOrigins(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(UInt64, arg2)
    )

export ShowBindingsForActionSet
ShowBindingsForActionSet(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRActiveActionSet_t")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  , arg3 :: UInt32
  , arg4 :: UInt64
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :ShowBindingsForActionSet}}(), this, arg1, arg2, arg3, arg4)
ShowBindingsForActionSet(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  ShowBindingsForActionSet(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRActiveActionSet_t")},(false, false, false)},(false, false, false)}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(UInt64, arg4)
    )

export Open
Open(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: CppEnum{Symbol("vr::EIOBufferMode"),UInt32}
  , arg3 :: UInt32
  , arg4 :: UInt32
  , arg5 :: Ptr{UInt64}
  )      :: CppEnum{Symbol("vr::EIOBufferError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :Open}}(), this, arg1, arg2, arg3, arg4, arg5)
Open(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4, arg5) =
  Open(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EIOBufferMode"),UInt32}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(UInt32, arg4)
    , reinterpret4cxx(Ptr{UInt64}, arg5)
    )

export Close
Close(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: CppEnum{Symbol("vr::EIOBufferError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :Close}}(), this, arg1)
Close(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N, arg1) =
  Close(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export Read
Read(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Nothing}
  , arg3 :: UInt32
  , arg4 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EIOBufferError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :Read}}(), this, arg1, arg2, arg3, arg4)
Read(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  Read(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(Ptr{UInt32}, arg4)
    )

export Write
Write(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{Nothing}
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EIOBufferError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :Write}}(), this, arg1, arg2, arg3)
Write(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  Write(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Nothing}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    )

export PropertyContainer
PropertyContainer(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: UInt64 =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :PropertyContainer}}(), this, arg1)
PropertyContainer(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N, arg1) =
  PropertyContainer(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export CreateSpatialAnchorFromDescriptor
CreateSpatialAnchorFromDescriptor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVRSpatialAnchorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CreateSpatialAnchorFromDescriptor}}(), this, arg1, arg2)
CreateSpatialAnchorFromDescriptor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N, arg1, arg2) =
  CreateSpatialAnchorFromDescriptor(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(Ptr{UInt32}, arg2)
    )

export CreateSpatialAnchorFromPose
CreateSpatialAnchorFromPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::SpatialAnchorPose_t")},(false, false, false)},(false, false, false)}
  , arg4 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVRSpatialAnchorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CreateSpatialAnchorFromPose}}(), this, arg1, arg2, arg3, arg4)
CreateSpatialAnchorFromPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  CreateSpatialAnchorFromPose(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::SpatialAnchorPose_t")},(false, false, false)},(false, false, false)}, arg3)
    , reinterpret4cxx(Ptr{UInt32}, arg4)
    )

export GetSpatialAnchorPose
GetSpatialAnchorPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::SpatialAnchorPose_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRSpatialAnchorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSpatialAnchorPose}}(), this, arg1, arg2, arg3)
GetSpatialAnchorPose(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetSpatialAnchorPose(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::SpatialAnchorPose_t")},(false, false, false)},(false, false, false)}, arg3)
    )

export GetSpatialAnchorDescriptor
GetSpatialAnchorDescriptor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt32}
  )      :: CppEnum{Symbol("vr::EVRSpatialAnchorError"),UInt32} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :GetSpatialAnchorDescriptor}}(), this, arg1, arg2, arg3)
GetSpatialAnchorDescriptor(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetSpatialAnchorDescriptor(
      this
    , reinterpret4cxx(UInt32, arg1)
    , reinterpret4cxx(Ptr{UInt8}, arg2)
    , reinterpret4cxx(Ptr{UInt32}, arg3)
    )

export Clear
Clear(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :Clear}}(), this)

export CheckClear
CheckClear(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :CheckClear}}(), this)

export VRSystem
VRSystem(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRSystem}}(), this)

export VRChaperone
VRChaperone(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRChaperone}}(), this)

export VRChaperoneSetup
VRChaperoneSetup(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRChaperoneSetup}}(), this)

export VRCompositor
VRCompositor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRCompositor}}(), this)

export VROverlay
VROverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VROverlay}}(), this)

export VRResources
VRResources(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRResources")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRResources}}(), this)

export VRScreenshots
VRScreenshots(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRScreenshots}}(), this)

export VRRenderModels
VRRenderModels(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRRenderModels}}(), this)

export VRExtendedDisplay
VRExtendedDisplay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRExtendedDisplay}}(), this)

export VRSettings
VRSettings(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRSettings}}(), this)

export VRApplications
VRApplications(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRApplications}}(), this)

export VRTrackedCamera
VRTrackedCamera(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRTrackedCamera}}(), this)

export VRDriverManager
VRDriverManager(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRDriverManager}}(), this)

export VRInput
VRInput(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRInput}}(), this)

export VRIOBuffer
VRIOBuffer(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRIOBuffer}}(), this)

export VRSpatialAnchors
VRSpatialAnchors(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},(false, false, false)} =
  cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :VRSpatialAnchors}}(), this)

