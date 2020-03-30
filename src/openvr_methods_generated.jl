export GetRecommendedRenderTargetSize
GetRecommendedRenderTargetSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt32}
  , arg2 :: Ptr{UInt32}
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetRecommendedRenderTargetSize}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetProjectionMatrix}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetProjectionRaw}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ComputeDistortion}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetEyeToHeadTransform}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetTimeSinceLastVsync}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetD3D9AdapterIndex}}(), this)

export GetDXGIOutputInfo
GetDXGIOutputInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: Ptr{Int32}
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDXGIOutputInfo}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOutputDevice}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsDisplayOnDesktop}}(), this)

export SetDisplayVisibility
SetDisplayVisibility(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetDisplayVisibility}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDeviceToAbsoluteTrackingPose}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ResetSeatedZeroPose}}(), this)

export GetSeatedZeroPoseToStandingAbsoluteTrackingPose
GetSeatedZeroPoseToStandingAbsoluteTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},N} where N =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSeatedZeroPoseToStandingAbsoluteTrackingPose}}(), this)

export GetRawZeroPoseToStandingAbsoluteTrackingPose
GetRawZeroPoseToStandingAbsoluteTrackingPose(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},N} where N =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetRawZeroPoseToStandingAbsoluteTrackingPose}}(), this)

export GetSortedTrackedDeviceIndicesOfClass
GetSortedTrackedDeviceIndicesOfClass(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackedDeviceClass"),UInt32}
  , arg2 :: Ptr{UInt32}
  , arg3 :: UInt32
  , arg4 :: UInt32
  )      :: UInt32 =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSortedTrackedDeviceIndicesOfClass}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetTrackedDeviceActivityLevel}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ApplyTransform}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetTrackedDeviceIndexForControllerRole}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetControllerRoleForTrackedDeviceIndex}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetTrackedDeviceClass}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsTrackedDeviceConnected}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetBoolTrackedDeviceProperty}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetFloatTrackedDeviceProperty}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetInt32TrackedDeviceProperty}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetUint64TrackedDeviceProperty}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetMatrix34TrackedDeviceProperty}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetArrayTrackedDeviceProperty}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetStringTrackedDeviceProperty}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetPropErrorNameFromEnum}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:PollNextEvent}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:PollNextEventWithPose}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetEventTypeNameFromEnum}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetHiddenAreaMesh}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetControllerState}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetControllerStateWithPose}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:TriggerHapticPulse}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetButtonIdNameFromEnum}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetControllerAxisTypeNameFromEnum}}(), this, arg1)
GetControllerAxisTypeNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  GetControllerAxisTypeNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRControllerAxisType"),UInt32}, arg1)
    )

export IsInputAvailable
IsInputAvailable(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsInputAvailable}}(), this)

export IsSteamVRDrawingControllers
IsSteamVRDrawingControllers(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsSteamVRDrawingControllers}}(), this)

export ShouldApplicationPause
ShouldApplicationPause(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShouldApplicationPause}}(), this)

export ShouldApplicationReduceRenderingWork
ShouldApplicationReduceRenderingWork(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShouldApplicationReduceRenderingWork}}(), this)

export PerformFirmwareUpdate
PerformFirmwareUpdate(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  , arg1 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRFirmwareError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:PerformFirmwareUpdate}}(), this, arg1)
PerformFirmwareUpdate(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N, arg1) =
  PerformFirmwareUpdate(
      this
    , reinterpret4cxx(UInt32, arg1)
    )

export AcknowledgeQuit_Exiting
AcknowledgeQuit_Exiting(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:AcknowledgeQuit_Exiting}}(), this)

export AddApplicationManifest
AddApplicationManifest(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Bool
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:AddApplicationManifest}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RemoveApplicationManifest}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsApplicationInstalled}}(), this, arg1)
IsApplicationInstalled(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  IsApplicationInstalled(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export GetApplicationCount
GetApplicationCount(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationCount}}(), this)

export GetApplicationKeyByIndex
GetApplicationKeyByIndex(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationKeyByIndex}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationKeyByProcessId}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LaunchApplication}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LaunchTemplateApplication}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LaunchApplicationFromMimeType}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LaunchDashboardOverlay}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CancelApplicationLaunch}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IdentifyApplication}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationProcessId}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationsErrorNameFromEnum}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationPropertyString}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationPropertyBool}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationPropertyUint64}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetApplicationAutoLaunch}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationAutoLaunch}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetDefaultApplicationForMimeType}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDefaultApplicationForMimeType}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationSupportedMimeTypes}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationsThatSupportMimeType}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetApplicationLaunchArguments}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetStartingApplication}}(), this, arg1, arg2)
GetStartingApplication(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1, arg2) =
  GetStartingApplication(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    , reinterpret4cxx(UInt32, arg2)
    )

export PerformApplicationPrelaunchCheck
PerformApplicationPrelaunchCheck(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:PerformApplicationPrelaunchCheck}}(), this, arg1)
PerformApplicationPrelaunchCheck(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N, arg1) =
  PerformApplicationPrelaunchCheck(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export LaunchInternalProcess
LaunchInternalProcess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{UInt8}
  )      :: CppEnum{Symbol("vr::EVRApplicationError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LaunchInternalProcess}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCurrentSceneProcessId}}(), this)

export GetSettingsErrorNameFromEnum
GetSettingsErrorNameFromEnum(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::EVRSettingsError"),UInt32}
  )      :: Ptr{UInt8} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSettingsErrorNameFromEnum}}(), this, arg1)
GetSettingsErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N, arg1) =
  GetSettingsErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSettingsError"),UInt32}, arg1)
    )

export SetBool
SetBool(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Bool
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetBool}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetInt32}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetFloat}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetString}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetBool}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetInt32}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetFloat}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetString}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RemoveSection}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RemoveKeyInSection}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSettingsErrorNameFromEnum}}(), this, arg1)
GetSettingsErrorNameFromEnum(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N, arg1) =
  GetSettingsErrorNameFromEnum(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSettingsError"),UInt32}, arg1)
    )

export SetBool
SetBool(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Bool
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetBool}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetInt32}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetFloat}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetString}}(), this, arg1, arg2, arg3, arg4)

export SetString
SetString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg2 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg3 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetString}}(), this, arg1, arg2, arg3, arg4)

export GetBool
GetBool(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{UInt8}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetBool}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetInt32}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetFloat}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetString}}(), this, arg1, arg2, arg3, arg4, arg5)

export GetString
GetString(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg2 :: CppRef{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)}
  , arg3 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: CppValue{CxxQualType{CppTemplate{CppBaseType{Symbol("std::__cxx11::basic_string")},Tuple{UInt8,CxxQualType{CppTemplate{CppBaseType{Symbol("std::char_traits")},Tuple{UInt8}},(false, false, false)},CxxQualType{CppTemplate{CppBaseType{Symbol("std::allocator")},Tuple{UInt8}},(false, false, false)}}},(false, false, false)},N} where N =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetString}}(), this, arg1, arg2, arg3)

export RemoveSection
RemoveSection(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::CVRSettingHelper")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: Ptr{CppEnum{Symbol("vr::EVRSettingsError"),UInt32}}
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RemoveSection}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RemoveKeyInSection}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCalibrationState}}(), this)

export GetPlayAreaSize
GetPlayAreaSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  , arg1 :: Ptr{Float32}
  , arg2 :: Ptr{Float32}
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetPlayAreaSize}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetPlayAreaRect}}(), this, arg1)
GetPlayAreaRect(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N, arg1) =
  GetPlayAreaRect(
      this
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdQuad_t")},(false, false, false)},(false, false, false)}, arg1)
    )

export ReloadInfo
ReloadInfo(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ReloadInfo}}(), this)

export SetSceneColor
SetSceneColor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  , arg1 :: CppValue{CxxQualType{CppBaseType{Symbol("vr::HmdColor_t")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetSceneColor}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetBoundsColor}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:AreBoundsVisible}}(), this)

export ForceBoundsVisible
ForceBoundsVisible(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ForceBoundsVisible}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CommitWorkingCopy}}(), this, arg1)
CommitWorkingCopy(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N, arg1) =
  CommitWorkingCopy(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EChaperoneConfigFile"),UInt32}, arg1)
    )

export RevertWorkingCopy
RevertWorkingCopy(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RevertWorkingCopy}}(), this)

export GetWorkingPlayAreaSize
GetWorkingPlayAreaSize(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  , arg1 :: Ptr{Float32}
  , arg2 :: Ptr{Float32}
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetWorkingPlayAreaSize}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetWorkingPlayAreaRect}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetWorkingCollisionBoundsInfo}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetLiveCollisionBoundsInfo}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetWorkingSeatedZeroPoseToRawTrackingPose}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetWorkingStandingZeroPoseToRawTrackingPose}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetWorkingPlayAreaSize}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetWorkingCollisionBoundsInfo}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetWorkingPerimeter}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetWorkingSeatedZeroPoseToRawTrackingPose}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetWorkingStandingZeroPoseToRawTrackingPose}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ReloadFromDisk}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetLiveSeatedZeroPoseToRawTrackingPose}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ExportLiveToBuffer}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ImportFromBufferToWorking}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowWorkingSetPreview}}(), this)

export HideWorkingSetPreview
HideWorkingSetPreview(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:HideWorkingSetPreview}}(), this)

export SetTrackingSpace
SetTrackingSpace(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetTrackingSpace}}(), this, arg1)
SetTrackingSpace(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  SetTrackingSpace(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}, arg1)
    )

export GetTrackingSpace
GetTrackingSpace(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetTrackingSpace}}(), this)

export WaitGetPoses
WaitGetPoses(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::TrackedDevicePose_t")},(false, false, false)},(false, false, false)}
  , arg4 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:WaitGetPoses}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetLastPoses}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetLastPoseForTrackedDeviceIndex}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:Submit}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ClearLastSubmittedFrame}}(), this)

export PostPresentHandoff
PostPresentHandoff(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:PostPresentHandoff}}(), this)

export GetFrameTiming
GetFrameTiming(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Compositor_FrameTiming")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetFrameTiming}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetFrameTimings}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetFrameTimeRemaining}}(), this)

export GetCumulativeStats
GetCumulativeStats(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Compositor_CumulativeStats")},(false, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCumulativeStats}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:FadeToColor}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCurrentFadeColor}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:FadeGrid}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCurrentGridAlpha}}(), this)

export SetSkyboxOverride
SetSkyboxOverride(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::Texture_t")},(true, false, false)},(false, false, false)}
  , arg2 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetSkyboxOverride}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ClearSkyboxOverride}}(), this)

export CompositorBringToFront
CompositorBringToFront(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CompositorBringToFront}}(), this)

export CompositorGoToBack
CompositorGoToBack(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CompositorGoToBack}}(), this)

export CompositorQuit
CompositorQuit(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CompositorQuit}}(), this)

export IsFullscreen
IsFullscreen(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsFullscreen}}(), this)

export GetCurrentSceneFocusProcess
GetCurrentSceneFocusProcess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCurrentSceneFocusProcess}}(), this)

export GetLastFrameRenderer
GetLastFrameRenderer(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetLastFrameRenderer}}(), this)

export CanRenderScene
CanRenderScene(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CanRenderScene}}(), this)

export ShowMirrorWindow
ShowMirrorWindow(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowMirrorWindow}}(), this)

export HideMirrorWindow
HideMirrorWindow(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:HideMirrorWindow}}(), this)

export IsMirrorWindowVisible
IsMirrorWindowVisible(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsMirrorWindowVisible}}(), this)

export CompositorDumpImages
CompositorDumpImages(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CompositorDumpImages}}(), this)

export ShouldAppRenderWithLowResources
ShouldAppRenderWithLowResources(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShouldAppRenderWithLowResources}}(), this)

export ForceInterleavedReprojectionOn
ForceInterleavedReprojectionOn(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ForceInterleavedReprojectionOn}}(), this, arg1)
ForceInterleavedReprojectionOn(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  ForceInterleavedReprojectionOn(
      this
    , reinterpret4cxx(Bool, arg1)
    )

export ForceReconnectProcess
ForceReconnectProcess(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ForceReconnectProcess}}(), this)

export SuspendRendering
SuspendRendering(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  , arg1 :: Bool
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SuspendRendering}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetMirrorTextureD3D11}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ReleaseMirrorTextureD3D11}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetMirrorTextureGL}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ReleaseSharedGLTexture}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LockGLSharedTextureForAccess}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:UnlockGLSharedTextureForAccess}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetVulkanInstanceExtensionsRequired}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetExplicitTimingMode}}(), this, arg1)
SetExplicitTimingMode(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N, arg1) =
  SetExplicitTimingMode(
      this
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRCompositorTimingMode"),UInt32}, arg1)
    )

export SubmitExplicitTimingData
SubmitExplicitTimingData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: CppEnum{Symbol("vr::EVRCompositorError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SubmitExplicitTimingData}}(), this)

export IsMotionSmoothingEnabled
IsMotionSmoothingEnabled(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsMotionSmoothingEnabled}}(), this)

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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CreateNotification}}(), this, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RemoveNotification}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:FindOverlay}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CreateOverlay}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:DestroyOverlay}}(), this, arg1)
DestroyOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  DestroyOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export GetOverlayKey
GetOverlayKey(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  , arg4 :: Ptr{CppEnum{Symbol("vr::EVROverlayError"),UInt32}}
  )      :: UInt32 =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayKey}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayName}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayName}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayImageData}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayErrorNameFromEnum}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayRenderingPid}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayRenderingPid}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayFlag}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayFlag}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayColor}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayColor}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayAlpha}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayAlpha}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayTexelAspect}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTexelAspect}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlaySortOrder}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlaySortOrder}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayWidthInMeters}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayWidthInMeters}}(), this, arg1, arg2)
GetOverlayWidthInMeters(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayWidthInMeters(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{Float32}, arg2)
    )

export SetOverlayTextureColorSpace
SetOverlayTextureColorSpace(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EColorSpace"),UInt32}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayTextureColorSpace}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTextureColorSpace}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayTextureBounds}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTextureBounds}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayRenderModel}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayRenderModel}}(), this, arg1, arg2, arg3)
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
  , arg2 :: Ptr{CppEnum{Symbol("vr::VROverlayTransformType"),Int32}}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTransformType}}(), this, arg1, arg2)
GetOverlayTransformType(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1, arg2) =
  GetOverlayTransformType(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(Ptr{CppEnum{Symbol("vr::VROverlayTransformType"),Int32}}, arg2)
    )

export SetOverlayTransformAbsolute
SetOverlayTransformAbsolute(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayTransformAbsolute}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTransformAbsolute}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayTransformTrackedDeviceRelative}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTransformTrackedDeviceRelative}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayTransformTrackedDeviceComponent}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTransformTrackedDeviceComponent}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTransformOverlayRelative}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayTransformOverlayRelative}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowOverlay}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:HideOverlay}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsOverlayVisible}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetTransformForOverlayCoordinates}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:PollNextOverlayEvent}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayInputMethod}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayInputMethod}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayMouseScale}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayMouseScale}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ComputeOverlayIntersection}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsHoverTargetOverlay}}(), this, arg1)
IsHoverTargetOverlay(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  IsHoverTargetOverlay(
      this
    , reinterpret4cxx(UInt64, arg1)
    )

export SetOverlayDualAnalogTransform
SetOverlayDualAnalogTransform(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppEnum{Symbol("vr::EDualAnalogWhich"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdVector2_t")},(true, false, false)},(false, false, false)}
  , arg4 :: Float32
  )      :: CppEnum{Symbol("vr::EVROverlayError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayDualAnalogTransform}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayDualAnalogTransform}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayTexture}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ClearOverlayTexture}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayRaw}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayFromFile}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTexture}}(), this, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ReleaseNativeOverlayHandle}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayTextureSize}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CreateDashboardOverlay}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsDashboardVisible}}(), this)

export IsActiveDashboardOverlay
IsActiveDashboardOverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: UInt64
  )      :: Bool =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:IsActiveDashboardOverlay}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetDashboardOverlaySceneProcess}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDashboardOverlaySceneProcess}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowDashboard}}(), this, arg1)
ShowDashboard(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N, arg1) =
  ShowDashboard(
      this
    , reinterpret4cxx(Ptr{UInt8}, arg1)
    )

export GetPrimaryDashboardDevice
GetPrimaryDashboardDevice(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  )      :: UInt32 =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetPrimaryDashboardDevice}}(), this)

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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowKeyboard}}(), this, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowKeyboardForOverlay}}(), this, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetKeyboardText}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:HideKeyboard}}(), this)

export SetKeyboardTransformAbsolute
SetKeyboardTransformAbsolute(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  , arg1 :: CppEnum{Symbol("vr::ETrackingUniverseOrigin"),UInt32}
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::HmdMatrix34_t")},(true, false, false)},(false, false, false)}
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetKeyboardTransformAbsolute}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetKeyboardPositionForOverlay}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetOverlayIntersectionMask}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOverlayFlags}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowMessageOverlay}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CloseMessageOverlay}}(), this)

export LoadRenderModel_Async
LoadRenderModel_Async(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  , arg2 :: CppPtr{CppPtr{CxxQualType{CppBaseType{Symbol("vr::RenderModel_t")},(false, false, false)},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRRenderModelError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LoadRenderModel_Async}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:FreeRenderModel}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LoadTexture_Async}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:FreeTexture}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LoadTextureD3D11_Async}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LoadIntoTextureD3D11_Async}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:FreeTextureD3D11}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetRenderModelName}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetRenderModelCount}}(), this)

export GetComponentCount
GetComponentCount(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  , arg1 :: Ptr{UInt8}
  )      :: UInt32 =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetComponentCount}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetComponentName}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetComponentButtonMask}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetComponentRenderModelName}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetComponentStateForDevicePath}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetComponentState}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RenderModelHasComponent}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetRenderModelThumbnailURL}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetRenderModelOriginalPath}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetRenderModelErrorNameFromEnum}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetWindowBounds}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetEyeOutputViewport}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDXGIOutputInfo}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCameraErrorNameFromEnum}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:HasCamera}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCameraFrameSize}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCameraIntrinsics}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetCameraProjection}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:AcquireVideoStreamingService}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ReleaseVideoStreamingService}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetVideoStreamFrameBuffer}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetVideoStreamTextureSize}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetVideoStreamTextureD3D11}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetVideoStreamTextureGL}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ReleaseVideoStreamTextureGL}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:RequestScreenshot}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:HookScreenshot}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetScreenshotPropertyType}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetScreenshotPropertyFilename}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:UpdateScreenshotProgress}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:TakeStereoScreenshot}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SubmitScreenshot}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:LoadSharedResource}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetResourceFullPath}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDriverCount}}(), this)

export GetDriverName
GetDriverName(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},N} where N
  , arg1 :: UInt32
  , arg2 :: Ptr{UInt8}
  , arg3 :: UInt32
  )      :: UInt32 =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDriverName}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDriverHandle}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:SetActionManifestPath}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetActionSetHandle}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetActionHandle}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetInputSourceHandle}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:UpdateActionState}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetDigitalActionData}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetAnalogActionData}}(), this, arg1, arg2, arg3, arg4)
GetAnalogActionData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3, arg4) =
  GetAnalogActionData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputAnalogActionData_t")},(false, false, false)},(false, false, false)}, arg2)
    , reinterpret4cxx(UInt32, arg3)
    , reinterpret4cxx(UInt64, arg4)
    )

export GetSkeletalActionData
GetSkeletalActionData(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  , arg1 :: UInt64
  , arg2 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::InputSkeletalActionData_t")},(false, false, false)},(false, false, false)}
  , arg3 :: UInt32
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSkeletalActionData}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetBoneCount}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetBoneHierarchy}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetBoneName}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSkeletalReferenceTransforms}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSkeletalTrackingLevel}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSkeletalBoneData}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  , arg2 :: CppEnum{Symbol("vr::EVRSummaryType"),UInt32}
  , arg3 :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRSkeletalSummaryData_t")},(false, false, false)},(false, false, false)}
  )      :: CppEnum{Symbol("vr::EVRInputError"),UInt32} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSkeletalSummaryData}}(), this, arg1, arg2, arg3)
GetSkeletalSummaryData(this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N, arg1, arg2, arg3) =
  GetSkeletalSummaryData(
      this
    , reinterpret4cxx(UInt64, arg1)
    , reinterpret4cxx(CppEnum{Symbol("vr::EVRSummaryType"),UInt32}, arg2)
    , reinterpret4cxx(CppPtr{CxxQualType{CppBaseType{Symbol("vr::VRSkeletalSummaryData_t")},(false, false, false)},(false, false, false)}, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSkeletalBoneDataCompressed}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:DecompressSkeletalBoneData}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:TriggerHapticVibrationAction}}(), this, arg1, arg2, arg3, arg4, arg5, arg6)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetActionOrigins}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOriginLocalizedName}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetOriginTrackedDeviceInfo}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowActionOrigins}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:ShowBindingsForActionSet}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:Open}}(), this, arg1, arg2, arg3, arg4, arg5)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:Close}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:Read}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:Write}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:PropertyContainer}}(), this, arg1)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CreateSpatialAnchorFromDescriptor}}(), this, arg1, arg2)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CreateSpatialAnchorFromPose}}(), this, arg1, arg2, arg3, arg4)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSpatialAnchorPose}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:GetSpatialAnchorDescriptor}}(), this, arg1, arg2, arg3)
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
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:Clear}}(), this)

export CheckClear
CheckClear(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: Nothing =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:CheckClear}}(), this)

export VRSystem
VRSystem(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRSystem}}(), this)

export VRChaperone
VRChaperone(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRChaperone}}(), this)

export VRChaperoneSetup
VRChaperoneSetup(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRChaperoneSetup}}(), this)

export VRCompositor
VRCompositor(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRCompositor}}(), this)

export VROverlay
VROverlay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VROverlay}}(), this)

export VRResources
VRResources(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRResources")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRResources}}(), this)

export VRScreenshots
VRScreenshots(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRScreenshots}}(), this)

export VRRenderModels
VRRenderModels(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRRenderModels}}(), this)

export VRExtendedDisplay
VRExtendedDisplay(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRExtendedDisplay}}(), this)

export VRSettings
VRSettings(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRSettings}}(), this)

export VRApplications
VRApplications(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRApplications}}(), this)

export VRTrackedCamera
VRTrackedCamera(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRTrackedCamera}}(), this)

export VRDriverManager
VRDriverManager(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRDriverManager}}(), this)

export VRInput
VRInput(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRInput}}(), this)

export VRIOBuffer
VRIOBuffer(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRIOBuffer}}(), this)

export VRSpatialAnchors
VRSpatialAnchors(
    this :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N
  )      :: CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},(false, false, false)} =
  cppcall_member(__current_compiler__, CppNNS{(Tuple){:VRSpatialAnchors}}(), this)

