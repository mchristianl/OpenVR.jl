
@mkCppMethod IVRSystem GetRecommendedRenderTargetSize
@mkCppMethod IVRSystem GetProjectionMatrix
@mkCppMethod IVRSystem GetProjectionRaw
@mkCppMethod IVRSystem ComputeDistortion
@mkCppMethod IVRSystem GetEyeToHeadTransform
@mkCppMethod IVRSystem GetTimeSinceLastVsync
@mkCppMethod IVRSystem GetD3D9AdapterIndex
@mkCppMethod IVRSystem GetDXGIOutputInfo
@mkCppMethod IVRSystem GetOutputDevice
@mkCppMethod IVRSystem IsDisplayOnDesktop
@mkCppMethod IVRSystem SetDisplayVisibility
@mkCppMethod IVRSystem GetDeviceToAbsoluteTrackingPose
@mkCppMethod IVRSystem ResetSeatedZeroPose
@mkCppMethod IVRSystem GetSeatedZeroPoseToStandingAbsoluteTrackingPose
@mkCppMethod IVRSystem GetRawZeroPoseToStandingAbsoluteTrackingPose
@mkCppMethod IVRSystem GetSortedTrackedDeviceIndicesOfClass
@mkCppMethod IVRSystem GetTrackedDeviceActivityLevel
@mkCppMethod IVRSystem ApplyTransform
@mkCppMethod IVRSystem GetTrackedDeviceIndexForControllerRole
@mkCppMethod IVRSystem GetControllerRoleForTrackedDeviceIndex
@mkCppMethod IVRSystem GetTrackedDeviceClass
@mkCppMethod IVRSystem IsTrackedDeviceConnected
@mkCppMethod IVRSystem GetBoolTrackedDeviceProperty
@mkCppMethod IVRSystem GetFloatTrackedDeviceProperty
@mkCppMethod IVRSystem GetInt32TrackedDeviceProperty
@mkCppMethod IVRSystem GetUint64TrackedDeviceProperty
@mkCppMethod IVRSystem GetMatrix34TrackedDeviceProperty
@mkCppMethod IVRSystem GetArrayTrackedDeviceProperty
@mkCppMethod IVRSystem GetStringTrackedDeviceProperty
@mkCppMethod IVRSystem GetPropErrorNameFromEnum
@mkCppMethod IVRSystem PollNextEvent
@mkCppMethod IVRSystem PollNextEventWithPose
@mkCppMethod IVRSystem GetEventTypeNameFromEnum
@mkCppMethod IVRSystem GetHiddenAreaMesh
@mkCppMethod IVRSystem GetControllerState
@mkCppMethod IVRSystem GetControllerStateWithPose
@mkCppMethod IVRSystem TriggerHapticPulse
@mkCppMethod IVRSystem GetButtonIdNameFromEnum
@mkCppMethod IVRSystem GetControllerAxisTypeNameFromEnum
@mkCppMethod IVRSystem IsInputAvailable
@mkCppMethod IVRSystem IsSteamVRDrawingControllers
@mkCppMethod IVRSystem ShouldApplicationPause
@mkCppMethod IVRSystem ShouldApplicationReduceRenderingWork
@mkCppMethod IVRSystem DriverDebugRequest
@mkCppMethod IVRSystem PerformFirmwareUpdate
@mkCppMethod IVRSystem AcknowledgeQuit_Exiting
@mkCppMethod IVRSystem AcknowledgeQuit_UserPrompt

@mkCppMethod IVRApplications AddApplicationManifest
@mkCppMethod IVRApplications RemoveApplicationManifest
@mkCppMethod IVRApplications IsApplicationInstalled
@mkCppMethod IVRApplications GetApplicationCount
@mkCppMethod IVRApplications GetApplicationKeyByIndex
@mkCppMethod IVRApplications GetApplicationKeyByProcessId
@mkCppMethod IVRApplications LaunchApplication
@mkCppMethod IVRApplications LaunchTemplateApplication
@mkCppMethod IVRApplications LaunchApplicationFromMimeType
@mkCppMethod IVRApplications LaunchDashboardOverlay
@mkCppMethod IVRApplications CancelApplicationLaunch
@mkCppMethod IVRApplications IdentifyApplication
@mkCppMethod IVRApplications GetApplicationProcessId
@mkCppMethod IVRApplications GetApplicationsErrorNameFromEnum
@mkCppMethod IVRApplications GetApplicationPropertyString
@mkCppMethod IVRApplications GetApplicationPropertyBool
@mkCppMethod IVRApplications GetApplicationPropertyUint64
@mkCppMethod IVRApplications SetApplicationAutoLaunch
@mkCppMethod IVRApplications GetApplicationAutoLaunch
@mkCppMethod IVRApplications SetDefaultApplicationForMimeType
@mkCppMethod IVRApplications GetDefaultApplicationForMimeType
@mkCppMethod IVRApplications GetApplicationSupportedMimeTypes
@mkCppMethod IVRApplications GetApplicationsThatSupportMimeType
@mkCppMethod IVRApplications GetApplicationLaunchArguments
@mkCppMethod IVRApplications GetStartingApplication
@mkCppMethod IVRApplications GetTransitionState
@mkCppMethod IVRApplications PerformApplicationPrelaunchCheck
@mkCppMethod IVRApplications GetApplicationsTransitionStateNameFromEnum
@mkCppMethod IVRApplications IsQuitUserPromptRequested
@mkCppMethod IVRApplications LaunchInternalProcess
@mkCppMethod IVRApplications GetCurrentSceneProcessId

@mkCppMethod IVRSettings GetSettingsErrorNameFromEnum
@mkCppMethod IVRSettings Sync
@mkCppMethod IVRSettings SetBool
@mkCppMethod IVRSettings SetInt32
@mkCppMethod IVRSettings SetFloat
@mkCppMethod IVRSettings SetString
@mkCppMethod IVRSettings GetBool
@mkCppMethod IVRSettings GetInt32
@mkCppMethod IVRSettings GetFloat
@mkCppMethod IVRSettings GetString
@mkCppMethod IVRSettings RemoveSection
@mkCppMethod IVRSettings RemoveKeyInSection

@mkCppMethod CVRSettingHelper GetSettingsErrorNameFromEnum
@mkCppMethod CVRSettingHelper Sync
@mkCppMethod CVRSettingHelper SetBool
@mkCppMethod CVRSettingHelper SetInt32
@mkCppMethod CVRSettingHelper SetFloat
@mkCppMethodCast CVRSettingHelper SetString "void" "(const char *, const char *, const char *, vr::EVRSettingsError *)"
@mkCppMethodCast CVRSettingHelper SetString "void" "(const std::string &, const std::string &, const std::string &, vr::EVRSettingsError *)"
@mkCppMethod CVRSettingHelper GetBool
@mkCppMethod CVRSettingHelper GetInt32
@mkCppMethod CVRSettingHelper GetFloat
@mkCppMethodCast CVRSettingHelper GetString "void"        "(const char *, const char *, char *, uint32_t, vr::EVRSettingsError *)"
@mkCppMethodCast CVRSettingHelper GetString "std::string" "(const std::string &, const std::string &, vr::EVRSettingsError *)"
@mkCppMethod CVRSettingHelper RemoveSection
@mkCppMethod CVRSettingHelper RemoveKeyInSection

@mkCppMethod IVRChaperone GetCalibrationState
@mkCppMethod IVRChaperone GetPlayAreaSize
@mkCppMethod IVRChaperone GetPlayAreaRect
@mkCppMethod IVRChaperone ReloadInfo
@mkCppMethod IVRChaperone SetSceneColor
@mkCppMethod IVRChaperone GetBoundsColor
@mkCppMethod IVRChaperone AreBoundsVisible
@mkCppMethod IVRChaperone ForceBoundsVisible

@mkCppMethod IVRChaperoneSetup CommitWorkingCopy
@mkCppMethod IVRChaperoneSetup RevertWorkingCopy
@mkCppMethod IVRChaperoneSetup GetWorkingPlayAreaSize
@mkCppMethod IVRChaperoneSetup GetWorkingPlayAreaRect
@mkCppMethod IVRChaperoneSetup GetWorkingCollisionBoundsInfo
@mkCppMethod IVRChaperoneSetup GetLiveCollisionBoundsInfo
@mkCppMethod IVRChaperoneSetup GetWorkingSeatedZeroPoseToRawTrackingPose
@mkCppMethod IVRChaperoneSetup GetWorkingStandingZeroPoseToRawTrackingPose
@mkCppMethod IVRChaperoneSetup SetWorkingPlayAreaSize
@mkCppMethod IVRChaperoneSetup SetWorkingCollisionBoundsInfo
@mkCppMethod IVRChaperoneSetup SetWorkingPerimeter
@mkCppMethod IVRChaperoneSetup SetWorkingSeatedZeroPoseToRawTrackingPose
@mkCppMethod IVRChaperoneSetup SetWorkingStandingZeroPoseToRawTrackingPose
@mkCppMethod IVRChaperoneSetup ReloadFromDisk
@mkCppMethod IVRChaperoneSetup GetLiveSeatedZeroPoseToRawTrackingPose
@mkCppMethod IVRChaperoneSetup ExportLiveToBuffer
@mkCppMethod IVRChaperoneSetup ImportFromBufferToWorking
@mkCppMethod IVRChaperoneSetup ShowWorkingSetPreview
@mkCppMethod IVRChaperoneSetup HideWorkingSetPreview

@mkCppMethod IVRCompositor SetTrackingSpace
@mkCppMethod IVRCompositor GetTrackingSpace
@mkCppMethod IVRCompositor WaitGetPoses
@mkCppMethod IVRCompositor GetLastPoses
@mkCppMethod IVRCompositor GetLastPoseForTrackedDeviceIndex
@mkCppMethod IVRCompositor Submit
@mkCppMethod IVRCompositor ClearLastSubmittedFrame
@mkCppMethod IVRCompositor PostPresentHandoff
@mkCppMethod IVRCompositor GetFrameTiming
@mkCppMethod IVRCompositor GetFrameTimings
@mkCppMethod IVRCompositor GetFrameTimeRemaining
@mkCppMethod IVRCompositor GetCumulativeStats
@mkCppMethod IVRCompositor FadeToColor
@mkCppMethod IVRCompositor GetCurrentFadeColor
@mkCppMethod IVRCompositor FadeGrid
@mkCppMethod IVRCompositor GetCurrentGridAlpha
@mkCppMethod IVRCompositor SetSkyboxOverride
@mkCppMethod IVRCompositor ClearSkyboxOverride
@mkCppMethod IVRCompositor CompositorBringToFront
@mkCppMethod IVRCompositor CompositorGoToBack
@mkCppMethod IVRCompositor CompositorQuit
@mkCppMethod IVRCompositor IsFullscreen
@mkCppMethod IVRCompositor GetCurrentSceneFocusProcess
@mkCppMethod IVRCompositor GetLastFrameRenderer
@mkCppMethod IVRCompositor CanRenderScene
@mkCppMethod IVRCompositor ShowMirrorWindow
@mkCppMethod IVRCompositor HideMirrorWindow
@mkCppMethod IVRCompositor IsMirrorWindowVisible
@mkCppMethod IVRCompositor CompositorDumpImages
@mkCppMethod IVRCompositor ShouldAppRenderWithLowResources
@mkCppMethod IVRCompositor ForceInterleavedReprojectionOn
@mkCppMethod IVRCompositor ForceReconnectProcess
@mkCppMethod IVRCompositor SuspendRendering
@mkCppMethod IVRCompositor GetMirrorTextureD3D11
@mkCppMethod IVRCompositor ReleaseMirrorTextureD3D11
@mkCppMethod IVRCompositor GetMirrorTextureGL
@mkCppMethod IVRCompositor ReleaseSharedGLTexture
@mkCppMethod IVRCompositor LockGLSharedTextureForAccess
@mkCppMethod IVRCompositor UnlockGLSharedTextureForAccess
@mkCppMethod IVRCompositor GetVulkanInstanceExtensionsRequired
#   // .method("GetVulkanDeviceExtensionsRequired", &vr::IVRCompositor::GetVulkanDeviceExtensionsRequired) // VkPhysicalDevice_T ↯
@mkCppMethod IVRCompositor SetExplicitTimingMode
@mkCppMethod IVRCompositor SubmitExplicitTimingData
@mkCppMethod IVRCompositor IsMotionSmoothingEnabled

@mkCppMethod IVRNotifications CreateNotification
@mkCppMethod IVRNotifications RemoveNotification

@mkCppMethod IVROverlay FindOverlay
@mkCppMethod IVROverlay CreateOverlay
@mkCppMethod IVROverlay DestroyOverlay
@mkCppMethod IVROverlay SetHighQualityOverlay
@mkCppMethod IVROverlay GetHighQualityOverlay
@mkCppMethod IVROverlay GetOverlayKey
@mkCppMethod IVROverlay GetOverlayName
@mkCppMethod IVROverlay SetOverlayName
@mkCppMethod IVROverlay GetOverlayImageData
@mkCppMethod IVROverlay GetOverlayErrorNameFromEnum
@mkCppMethod IVROverlay SetOverlayRenderingPid
@mkCppMethod IVROverlay GetOverlayRenderingPid
@mkCppMethod IVROverlay SetOverlayFlag
@mkCppMethod IVROverlay GetOverlayFlag
@mkCppMethod IVROverlay SetOverlayColor
@mkCppMethod IVROverlay GetOverlayColor
@mkCppMethod IVROverlay SetOverlayAlpha
@mkCppMethod IVROverlay GetOverlayAlpha
@mkCppMethod IVROverlay SetOverlayTexelAspect
@mkCppMethod IVROverlay GetOverlayTexelAspect
@mkCppMethod IVROverlay SetOverlaySortOrder
@mkCppMethod IVROverlay GetOverlaySortOrder
@mkCppMethod IVROverlay SetOverlayWidthInMeters
@mkCppMethod IVROverlay GetOverlayWidthInMeters
@mkCppMethod IVROverlay SetOverlayAutoCurveDistanceRangeInMeters
@mkCppMethod IVROverlay GetOverlayAutoCurveDistanceRangeInMeters
@mkCppMethod IVROverlay SetOverlayTextureColorSpace
@mkCppMethod IVROverlay GetOverlayTextureColorSpace
@mkCppMethod IVROverlay SetOverlayTextureBounds
@mkCppMethod IVROverlay GetOverlayTextureBounds
@mkCppMethod IVROverlay GetOverlayRenderModel
@mkCppMethod IVROverlay SetOverlayRenderModel
@mkCppMethod IVROverlay GetOverlayTransformType
@mkCppMethod IVROverlay SetOverlayTransformAbsolute
@mkCppMethod IVROverlay GetOverlayTransformAbsolute
@mkCppMethod IVROverlay SetOverlayTransformTrackedDeviceRelative
@mkCppMethod IVROverlay GetOverlayTransformTrackedDeviceRelative
@mkCppMethod IVROverlay SetOverlayTransformTrackedDeviceComponent
@mkCppMethod IVROverlay GetOverlayTransformTrackedDeviceComponent
@mkCppMethod IVROverlay GetOverlayTransformOverlayRelative
@mkCppMethod IVROverlay SetOverlayTransformOverlayRelative
@mkCppMethod IVROverlay ShowOverlay
@mkCppMethod IVROverlay HideOverlay
@mkCppMethod IVROverlay IsOverlayVisible
@mkCppMethod IVROverlay GetTransformForOverlayCoordinates
@mkCppMethod IVROverlay PollNextOverlayEvent
@mkCppMethod IVROverlay GetOverlayInputMethod
@mkCppMethod IVROverlay SetOverlayInputMethod
@mkCppMethod IVROverlay GetOverlayMouseScale
@mkCppMethod IVROverlay SetOverlayMouseScale
@mkCppMethod IVROverlay ComputeOverlayIntersection
@mkCppMethod IVROverlay IsHoverTargetOverlay
@mkCppMethod IVROverlay GetGamepadFocusOverlay
@mkCppMethod IVROverlay SetGamepadFocusOverlay
@mkCppMethod IVROverlay SetOverlayNeighbor
@mkCppMethod IVROverlay MoveGamepadFocusToNeighbor
@mkCppMethod IVROverlay SetOverlayDualAnalogTransform
@mkCppMethod IVROverlay GetOverlayDualAnalogTransform
@mkCppMethod IVROverlay SetOverlayTexture
@mkCppMethod IVROverlay ClearOverlayTexture
@mkCppMethod IVROverlay SetOverlayRaw
@mkCppMethod IVROverlay SetOverlayFromFile
@mkCppMethod IVROverlay GetOverlayTexture
@mkCppMethod IVROverlay ReleaseNativeOverlayHandle
@mkCppMethod IVROverlay GetOverlayTextureSize
@mkCppMethod IVROverlay CreateDashboardOverlay
@mkCppMethod IVROverlay IsDashboardVisible
@mkCppMethod IVROverlay IsActiveDashboardOverlay
@mkCppMethod IVROverlay SetDashboardOverlaySceneProcess
@mkCppMethod IVROverlay GetDashboardOverlaySceneProcess
@mkCppMethod IVROverlay ShowDashboard
@mkCppMethod IVROverlay GetPrimaryDashboardDevice
@mkCppMethod IVROverlay ShowKeyboard
@mkCppMethod IVROverlay ShowKeyboardForOverlay
@mkCppMethod IVROverlay GetKeyboardText
@mkCppMethod IVROverlay HideKeyboard
@mkCppMethod IVROverlay SetKeyboardTransformAbsolute
@mkCppMethod IVROverlay SetKeyboardPositionForOverlay
@mkCppMethod IVROverlay SetOverlayIntersectionMask
@mkCppMethod IVROverlay GetOverlayFlags
@mkCppMethod IVROverlay ShowMessageOverlay
@mkCppMethod IVROverlay CloseMessageOverlay

@mkCppMethod IVRRenderModels LoadRenderModel_Async
@mkCppMethod IVRRenderModels FreeRenderModel
@mkCppMethod IVRRenderModels LoadTexture_Async
@mkCppMethod IVRRenderModels FreeTexture
@mkCppMethod IVRRenderModels LoadTextureD3D11_Async
@mkCppMethod IVRRenderModels LoadIntoTextureD3D11_Async
@mkCppMethod IVRRenderModels FreeTextureD3D11
@mkCppMethod IVRRenderModels GetRenderModelName
@mkCppMethod IVRRenderModels GetRenderModelCount
@mkCppMethod IVRRenderModels GetComponentCount
@mkCppMethod IVRRenderModels GetComponentName
@mkCppMethod IVRRenderModels GetComponentButtonMask
@mkCppMethod IVRRenderModels GetComponentRenderModelName
@mkCppMethod IVRRenderModels GetComponentStateForDevicePath
@mkCppMethod IVRRenderModels GetComponentState
@mkCppMethod IVRRenderModels RenderModelHasComponent
@mkCppMethod IVRRenderModels GetRenderModelThumbnailURL
@mkCppMethod IVRRenderModels GetRenderModelOriginalPath
@mkCppMethod IVRRenderModels GetRenderModelErrorNameFromEnum

@mkCppMethod IVRExtendedDisplay GetWindowBounds
@mkCppMethod IVRExtendedDisplay GetEyeOutputViewport
@mkCppMethod IVRExtendedDisplay GetDXGIOutputInfo

@mkCppMethod IVRTrackedCamera GetCameraErrorNameFromEnum
@mkCppMethod IVRTrackedCamera HasCamera
@mkCppMethod IVRTrackedCamera GetCameraFrameSize
@mkCppMethod IVRTrackedCamera GetCameraIntrinsics
@mkCppMethod IVRTrackedCamera GetCameraProjection
@mkCppMethod IVRTrackedCamera AcquireVideoStreamingService
@mkCppMethod IVRTrackedCamera ReleaseVideoStreamingService
@mkCppMethod IVRTrackedCamera GetVideoStreamFrameBuffer
@mkCppMethod IVRTrackedCamera GetVideoStreamTextureSize
@mkCppMethod IVRTrackedCamera GetVideoStreamTextureD3D11
@mkCppMethod IVRTrackedCamera GetVideoStreamTextureGL
@mkCppMethod IVRTrackedCamera ReleaseVideoStreamTextureGL

@mkCppMethod IVRScreenshots RequestScreenshot
@mkCppMethod IVRScreenshots HookScreenshot
@mkCppMethod IVRScreenshots GetScreenshotPropertyType
@mkCppMethod IVRScreenshots GetScreenshotPropertyFilename
@mkCppMethod IVRScreenshots UpdateScreenshotProgress
@mkCppMethod IVRScreenshots TakeStereoScreenshot
@mkCppMethod IVRScreenshots SubmitScreenshot

@mkCppMethod IVRResources LoadSharedResource
@mkCppMethod IVRResources GetResourceFullPath

@mkCppMethod IVRDriverManager GetDriverCount
@mkCppMethod IVRDriverManager GetDriverName
@mkCppMethod IVRDriverManager GetDriverHandle

@mkCppMethod IVRInput SetActionManifestPath
@mkCppMethod IVRInput GetActionSetHandle
@mkCppMethod IVRInput GetActionHandle
@mkCppMethod IVRInput GetInputSourceHandle
@mkCppMethod IVRInput UpdateActionState
@mkCppMethod IVRInput GetDigitalActionData
@mkCppMethod IVRInput GetAnalogActionData
@mkCppMethod IVRInput GetPoseActionData
@mkCppMethod IVRInput GetSkeletalActionData
@mkCppMethod IVRInput GetBoneCount
@mkCppMethod IVRInput GetBoneHierarchy
@mkCppMethod IVRInput GetBoneName
@mkCppMethod IVRInput GetSkeletalReferenceTransforms
@mkCppMethod IVRInput GetSkeletalTrackingLevel
@mkCppMethod IVRInput GetSkeletalBoneData
@mkCppMethod IVRInput GetSkeletalSummaryData
@mkCppMethod IVRInput GetSkeletalBoneDataCompressed
@mkCppMethod IVRInput DecompressSkeletalBoneData
@mkCppMethod IVRInput TriggerHapticVibrationAction
@mkCppMethod IVRInput GetActionOrigins
@mkCppMethod IVRInput GetOriginLocalizedName
@mkCppMethod IVRInput GetOriginTrackedDeviceInfo
@mkCppMethod IVRInput ShowActionOrigins
@mkCppMethod IVRInput ShowBindingsForActionSet

@mkCppMethod IVRIOBuffer Open
@mkCppMethod IVRIOBuffer Close
@mkCppMethod IVRIOBuffer Read
@mkCppMethod IVRIOBuffer Write
@mkCppMethod IVRIOBuffer PropertyContainer
# @mkCppMethod IVRIOBuffer HasReaders

@mkCppMethod IVRSpatialAnchors CreateSpatialAnchorFromDescriptor
@mkCppMethod IVRSpatialAnchors CreateSpatialAnchorFromPose
@mkCppMethod IVRSpatialAnchors GetSpatialAnchorPose
@mkCppMethod IVRSpatialAnchors GetSpatialAnchorDescriptor

@mkCppMethodInline COpenVRContext Clear
@mkCppMethod COpenVRContext CheckClear
@mkCppMethod COpenVRContext VRSystem
@mkCppMethod COpenVRContext VRChaperone
@mkCppMethod COpenVRContext VRChaperoneSetup
@mkCppMethod COpenVRContext VRCompositor
@mkCppMethod COpenVRContext VROverlay
@mkCppMethod COpenVRContext VRResources
@mkCppMethod COpenVRContext VRScreenshots
@mkCppMethod COpenVRContext VRRenderModels
@mkCppMethod COpenVRContext VRExtendedDisplay
@mkCppMethod COpenVRContext VRSettings
@mkCppMethod COpenVRContext VRApplications
@mkCppMethod COpenVRContext VRTrackedCamera
@mkCppMethod COpenVRContext VRDriverManager
@mkCppMethod COpenVRContext VRInput
@mkCppMethod COpenVRContext VRIOBuffer
@mkCppMethod COpenVRContext VRSpatialAnchors
# @mkCppMethod COpenVRContext VRNotifications