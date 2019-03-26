# Automatically generated using Clang.jl wrap_c
#  manually enhanced with ♥

const k_nDriverNone = Cuint(4294967295)
const k_unMaxDriverDebugResponseSize = Cuint(32768)
const k_unTrackedDeviceIndex_Hmd = Cuint(0)
const k_unMaxTrackedDeviceCount = Cuint(64)
const k_unTrackedDeviceIndexOther = Cuint(4294967294)
const k_unTrackedDeviceIndexInvalid = Cuint(4294967295)
const k_unInvalidPropertyTag = Cuint(0)
const k_unFloatPropertyTag = Cuint(1)
const k_unInt32PropertyTag = Cuint(2)
const k_unUint64PropertyTag = Cuint(3)
const k_unBoolPropertyTag = Cuint(4)
const k_unStringPropertyTag = Cuint(5)
const k_unHmdMatrix34PropertyTag = Cuint(20)
const k_unHmdMatrix44PropertyTag = Cuint(21)
const k_unHmdVector3PropertyTag = Cuint(22)
const k_unHmdVector4PropertyTag = Cuint(23)
const k_unHmdVector2PropertyTag = Cuint(24)
const k_unHmdQuadPropertyTag = Cuint(25)
const k_unHiddenAreaPropertyTag = Cuint(30)
const k_unPathHandleInfoTag = Cuint(31)
const k_unActionPropertyTag = Cuint(32)
const k_unInputValuePropertyTag = Cuint(33)
const k_unWildcardPropertyTag = Cuint(34)
const k_unHapticVibrationPropertyTag = Cuint(35)
const k_unSkeletonPropertyTag = Cuint(36)
const k_unSpatialAnchorPosePropertyTag = Cuint(40)
const k_unJsonPropertyTag = Cuint(41)
const k_unActiveActionSetPropertyTag = Cuint(42)
const k_unOpenVRInternalReserved_Start = Cuint(1000)
const k_unOpenVRInternalReserved_End = Cuint(10000)
const k_unMaxPropertyStringSize = Cuint(32768)
const k_unControllerStateAxisCount = Cuint(5)
const k_unMaxDistortionFunctionParameters = Cuint(8)
const k_unScreenshotHandleInvalid = Cuint(0)
const k_unMaxApplicationKeyLength = Cuint(128)
const k_unVROverlayMaxKeyLength = Cuint(128)
const k_unVROverlayMaxNameLength = Cuint(128)
const k_unMaxOverlayCount = Cuint(64)
const k_unMaxOverlayIntersectionMaskPrimitivesCount = Cuint(32)
const k_unNotificationTextMaxSize = Cuint(256)
const k_unMaxSettingsKeyLength = Cuint(128)
const k_unMaxActionNameLength = Cuint(64)
const k_unMaxActionSetNameLength = Cuint(64)
const k_unMaxActionOriginCount = Cuint(16)
const k_unMaxBoneNameLength = Cuint(32)
const k_ulInvalidSpatialAnchorHandle = Cuint(0)

const k_ulInvalidPropertyContainer = Culong(0)
const k_ulInvalidDriverHandle = Culong(0)
const k_ulInvalidActionHandle = Culong(0)
const k_ulInvalidActionSetHandle = Culong(0)
const k_ulInvalidInputValueHandle = Culong(0)
const k_ulOverlayHandleInvalid = Culong(0)
const k_ulInvalidIOBufferHandle = Culong(0)

const IVRSystem_Version = "IVRSystem_019";
const IVRExtendedDisplay_Version = "IVRExtendedDisplay_001";
const IVRTrackedCamera_Version = "IVRTrackedCamera_005";
const k_pch_MimeType_HomeApp = "vr/home";
const k_pch_MimeType_GameTheater = "vr/game_theater";
const IVRApplications_Version = "IVRApplications_006";
const IVRChaperone_Version = "IVRChaperone_003";
const IVRChaperoneSetup_Version = "IVRChaperoneSetup_006";
const IVRCompositor_Version = "IVRCompositor_022";
const IVROverlay_Version = "IVROverlay_019";
const k_pch_Controller_Component_GDC2015 = "gdc2015";
const k_pch_Controller_Component_Base = "base";
const k_pch_Controller_Component_Tip = "tip";
const k_pch_Controller_Component_HandGrip = "handgrip";
const k_pch_Controller_Component_Status = "status";
const IVRRenderModels_Version = "IVRRenderModels_006";
const IVRNotifications_Version = "IVRNotifications_002";
const IVRSettings_Version = "IVRSettings_002";
const k_pch_SteamVR_Section = "steamvr";
const k_pch_SteamVR_RequireHmd_String = "requireHmd";
const k_pch_SteamVR_ForcedDriverKey_String = "forcedDriver";
const k_pch_SteamVR_ForcedHmdKey_String = "forcedHmd";
const k_pch_SteamVR_DisplayDebug_Bool = "displayDebug";
const k_pch_SteamVR_DebugProcessPipe_String = "debugProcessPipe";
const k_pch_SteamVR_DisplayDebugX_Int32 = "displayDebugX";
const k_pch_SteamVR_DisplayDebugY_Int32 = "displayDebugY";
const k_pch_SteamVR_SendSystemButtonToAllApps_Bool = "sendSystemButtonToAllApps";
const k_pch_SteamVR_LogLevel_Int32 = "loglevel";
const k_pch_SteamVR_IPD_Float = "ipd";
const k_pch_SteamVR_Background_String = "background";
const k_pch_SteamVR_BackgroundUseDomeProjection_Bool = "backgroundUseDomeProjection";
const k_pch_SteamVR_BackgroundCameraHeight_Float = "backgroundCameraHeight";
const k_pch_SteamVR_BackgroundDomeRadius_Float = "backgroundDomeRadius";
const k_pch_SteamVR_GridColor_String = "gridColor";
const k_pch_SteamVR_PlayAreaColor_String = "playAreaColor";
const k_pch_SteamVR_ShowStage_Bool = "showStage";
const k_pch_SteamVR_ActivateMultipleDrivers_Bool = "activateMultipleDrivers";
const k_pch_SteamVR_UsingSpeakers_Bool = "usingSpeakers";
const k_pch_SteamVR_SpeakersForwardYawOffsetDegrees_Float = "speakersForwardYawOffsetDegrees";
const k_pch_SteamVR_BaseStationPowerManagement_Bool = "basestationPowerManagement";
const k_pch_SteamVR_NeverKillProcesses_Bool = "neverKillProcesses";
const k_pch_SteamVR_SupersampleScale_Float = "supersampleScale";
const k_pch_SteamVR_MaxRecommendedResolution_Int32 = "maxRecommendedResolution";
const k_pch_SteamVR_MotionSmoothing_Bool = "motionSmoothing";
const k_pch_SteamVR_MotionSmoothingOverride_Int32 = "motionSmoothingOverride";
const k_pch_SteamVR_ForceFadeOnBadTracking_Bool = "forceFadeOnBadTracking";
const k_pch_SteamVR_DefaultMirrorView_Int32 = "mirrorView";
const k_pch_SteamVR_ShowMirrorView_Bool = "showMirrorView";
const k_pch_SteamVR_MirrorViewGeometry_String = "mirrorViewGeometry";
const k_pch_SteamVR_MirrorViewGeometryMaximized_String = "mirrorViewGeometryMaximized";
const k_pch_SteamVR_StartMonitorFromAppLaunch = "startMonitorFromAppLaunch";
const k_pch_SteamVR_StartCompositorFromAppLaunch_Bool = "startCompositorFromAppLaunch";
const k_pch_SteamVR_StartDashboardFromAppLaunch_Bool = "startDashboardFromAppLaunch";
const k_pch_SteamVR_StartOverlayAppsFromDashboard_Bool = "startOverlayAppsFromDashboard";
const k_pch_SteamVR_EnableHomeApp = "enableHomeApp";
const k_pch_SteamVR_CycleBackgroundImageTimeSec_Int32 = "CycleBackgroundImageTimeSec";
const k_pch_SteamVR_RetailDemo_Bool = "retailDemo";
const k_pch_SteamVR_IpdOffset_Float = "ipdOffset";
const k_pch_SteamVR_AllowSupersampleFiltering_Bool = "allowSupersampleFiltering";
const k_pch_SteamVR_SupersampleManualOverride_Bool = "supersampleManualOverride";
const k_pch_SteamVR_EnableLinuxVulkanAsync_Bool = "enableLinuxVulkanAsync";
const k_pch_SteamVR_AllowDisplayLockedMode_Bool = "allowDisplayLockedMode";
const k_pch_SteamVR_HaveStartedTutorialForNativeChaperoneDriver_Bool = "haveStartedTutorialForNativeChaperoneDriver";
const k_pch_SteamVR_ForceWindows32bitVRMonitor = "forceWindows32BitVRMonitor";
const k_pch_SteamVR_DebugInput = "debugInput";
const k_pch_SteamVR_DebugInputBinding = "debugInputBinding";
const k_pch_SteamVR_InputBindingUIBlock = "inputBindingUI";
const k_pch_SteamVR_RenderCameraMode = "renderCameraMode";
const k_pch_SteamVR_EnableSharedResourceJournaling = "enableSharedResourceJournaling";
const k_pch_SteamVR_EnableSafeMode = "enableSafeMode";
const k_pch_SteamVR_PreferredRefreshRate = "preferredRefreshRate";
const k_pch_SteamVR_LastVersionNotice = "lastVersionNotice";
const k_pch_SteamVR_LastVersionNoticeDate = "lastVersionNoticeDate";
const k_pch_DirectMode_Section = "direct_mode";
const k_pch_DirectMode_Enable_Bool = "enable";
const k_pch_DirectMode_Count_Int32 = "count";
const k_pch_DirectMode_EdidVid_Int32 = "edidVid";
const k_pch_DirectMode_EdidPid_Int32 = "edidPid";
const k_pch_Lighthouse_Section = "driver_lighthouse";
const k_pch_Lighthouse_DisableIMU_Bool = "disableimu";
const k_pch_Lighthouse_DisableIMUExceptHMD_Bool = "disableimuexcepthmd";
const k_pch_Lighthouse_UseDisambiguation_String = "usedisambiguation";
const k_pch_Lighthouse_DisambiguationDebug_Int32 = "disambiguationdebug";
const k_pch_Lighthouse_PrimaryBasestation_Int32 = "primarybasestation";
const k_pch_Lighthouse_DBHistory_Bool = "dbhistory";
const k_pch_Lighthouse_EnableBluetooth_Bool = "enableBluetooth";
const k_pch_Lighthouse_PowerManagedBaseStations_String = "PowerManagedBaseStations";
const k_pch_Lighthouse_PowerManagedBaseStations2_String = "PowerManagedBaseStations2";
const k_pch_Lighthouse_EnableImuFallback_Bool = "enableImuFallback";
const k_pch_Null_Section = "driver_null";
const k_pch_Null_SerialNumber_String = "serialNumber";
const k_pch_Null_ModelNumber_String = "modelNumber";
const k_pch_Null_WindowX_Int32 = "windowX";
const k_pch_Null_WindowY_Int32 = "windowY";
const k_pch_Null_WindowWidth_Int32 = "windowWidth";
const k_pch_Null_WindowHeight_Int32 = "windowHeight";
const k_pch_Null_RenderWidth_Int32 = "renderWidth";
const k_pch_Null_RenderHeight_Int32 = "renderHeight";
const k_pch_Null_SecondsFromVsyncToPhotons_Float = "secondsFromVsyncToPhotons";
const k_pch_Null_DisplayFrequency_Float = "displayFrequency";
const k_pch_UserInterface_Section = "userinterface";
const k_pch_UserInterface_StatusAlwaysOnTop_Bool = "StatusAlwaysOnTop";
const k_pch_UserInterface_MinimizeToTray_Bool = "MinimizeToTray";
const k_pch_UserInterface_HidePopupsWhenStatusMinimized_Bool = "HidePopupsWhenStatusMinimized";
const k_pch_UserInterface_Screenshots_Bool = "screenshots";
const k_pch_UserInterface_ScreenshotType_Int = "screenshotType";
const k_pch_Notifications_Section = "notifications";
const k_pch_Notifications_DoNotDisturb_Bool = "DoNotDisturb";
const k_pch_Keyboard_Section = "keyboard";
const k_pch_Keyboard_TutorialCompletions = "TutorialCompletions";
const k_pch_Keyboard_ScaleX = "ScaleX";
const k_pch_Keyboard_ScaleY = "ScaleY";
const k_pch_Keyboard_OffsetLeftX = "OffsetLeftX";
const k_pch_Keyboard_OffsetRightX = "OffsetRightX";
const k_pch_Keyboard_OffsetY = "OffsetY";
const k_pch_Keyboard_Smoothing = "Smoothing";
const k_pch_Perf_Section = "perfcheck";
const k_pch_Perf_PerfGraphInHMD_Bool = "perfGraphInHMD";
const k_pch_Perf_AllowTimingStore_Bool = "allowTimingStore";
const k_pch_Perf_SaveTimingsOnExit_Bool = "saveTimingsOnExit";
const k_pch_Perf_TestData_Float = "perfTestData";
const k_pch_Perf_LinuxGPUProfiling_Bool = "linuxGPUProfiling";
const k_pch_CollisionBounds_Section = "collisionBounds";
const k_pch_CollisionBounds_Style_Int32 = "CollisionBoundsStyle";
const k_pch_CollisionBounds_GroundPerimeterOn_Bool = "CollisionBoundsGroundPerimeterOn";
const k_pch_CollisionBounds_CenterMarkerOn_Bool = "CollisionBoundsCenterMarkerOn";
const k_pch_CollisionBounds_PlaySpaceOn_Bool = "CollisionBoundsPlaySpaceOn";
const k_pch_CollisionBounds_FadeDistance_Float = "CollisionBoundsFadeDistance";
const k_pch_CollisionBounds_ColorGammaR_Int32 = "CollisionBoundsColorGammaR";
const k_pch_CollisionBounds_ColorGammaG_Int32 = "CollisionBoundsColorGammaG";
const k_pch_CollisionBounds_ColorGammaB_Int32 = "CollisionBoundsColorGammaB";
const k_pch_CollisionBounds_ColorGammaA_Int32 = "CollisionBoundsColorGammaA";
const k_pch_Camera_Section = "camera";
const k_pch_Camera_EnableCamera_Bool = "enableCamera";
const k_pch_Camera_EnableCameraInDashboard_Bool = "enableCameraInDashboard";
const k_pch_Camera_EnableCameraForCollisionBounds_Bool = "enableCameraForCollisionBounds";
const k_pch_Camera_EnableCameraForRoomView_Bool = "enableCameraForRoomView";
const k_pch_Camera_BoundsColorGammaR_Int32 = "cameraBoundsColorGammaR";
const k_pch_Camera_BoundsColorGammaG_Int32 = "cameraBoundsColorGammaG";
const k_pch_Camera_BoundsColorGammaB_Int32 = "cameraBoundsColorGammaB";
const k_pch_Camera_BoundsColorGammaA_Int32 = "cameraBoundsColorGammaA";
const k_pch_Camera_BoundsStrength_Int32 = "cameraBoundsStrength";
const k_pch_Camera_RoomViewMode_Int32 = "cameraRoomViewMode";
const k_pch_audio_Section = "audio";
const k_pch_audio_OnPlaybackDevice_String = "onPlaybackDevice";
const k_pch_audio_OnRecordDevice_String = "onRecordDevice";
const k_pch_audio_OnPlaybackMirrorDevice_String = "onPlaybackMirrorDevice";
const k_pch_audio_OffPlaybackDevice_String = "offPlaybackDevice";
const k_pch_audio_OffRecordDevice_String = "offRecordDevice";
const k_pch_audio_VIVEHDMIGain = "viveHDMIGain";
const k_pch_Power_Section = "power";
const k_pch_Power_PowerOffOnExit_Bool = "powerOffOnExit";
const k_pch_Power_TurnOffScreensTimeout_Float = "turnOffScreensTimeout";
const k_pch_Power_TurnOffControllersTimeout_Float = "turnOffControllersTimeout";
const k_pch_Power_ReturnToWatchdogTimeout_Float = "returnToWatchdogTimeout";
const k_pch_Power_AutoLaunchSteamVROnButtonPress = "autoLaunchSteamVROnButtonPress";
const k_pch_Power_PauseCompositorOnStandby_Bool = "pauseCompositorOnStandby";
const k_pch_Dashboard_Section = "dashboard";
const k_pch_Dashboard_EnableDashboard_Bool = "enableDashboard";
const k_pch_Dashboard_ArcadeMode_Bool = "arcadeMode";
const k_pch_Dashboard_EnableWebUI = "webUI";
const k_pch_Dashboard_EnableWebUIDevTools = "webUIDevTools";
const k_pch_Dashboard_EnableWebUIDashboardReplacement = "webUIDashboard";
const k_pch_modelskin_Section = "modelskins";
const k_pch_Driver_Enable_Bool = "enable";
const k_pch_WebInterface_Section = "WebInterface";
const k_pch_WebInterface_WebEnable_Bool = "WebEnable";
const k_pch_WebInterface_WebPort_String = "WebPort";
const k_pch_VRWebHelper_Section = "VRWebHelper";
const k_pch_VRWebHelper_DebuggerEnabled_Bool = "DebuggerEnabled";
const k_pch_VRWebHelper_DebuggerPort_Int32 = "DebuggerPort";
const k_pch_TrackingOverride_Section = "TrackingOverrides";
const k_pch_App_BindingAutosaveURLSuffix_String = "AutosaveURL";
const k_pch_App_BindingCurrentURLSuffix_String = "CurrentURL";
const k_pch_App_NeedToUpdateAutosaveSuffix_Bool = "NeedToUpdateAutosave";
const k_pch_Trackers_Section = "trackers";
const k_pch_DesktopUI_Section = "DesktopUI";
const k_pch_LastKnown_Section = "LastKnown";
const k_pch_LastKnown_HMDManufacturer_String = "HMDManufacturer";
const k_pch_LastKnown_HMDModel_String = "HMDModel";
const k_pch_DismissedWarnings_Section = "DismissedWarnings";
const IVRScreenshots_Version = "IVRScreenshots_001";
const IVRResources_Version = "IVRResources_001";
const IVRDriverManager_Version = "IVRDriverManager_001";
const IVRInput_Version = "IVRInput_005";
const IVRIOBuffer_Version = "IVRIOBuffer_002";
const IVRSpatialAnchors_Version = "IVRSpatialAnchors_001";

# const S_API = EXTERN_C
const bool = UInt8
const PropertyContainerHandle_t = UInt64
const PropertyTypeTag_t = UInt32
const VRActionHandle_t = UInt64
const VRActionSetHandle_t = UInt64
const VRInputValueHandle_t = UInt64

# opaque pointers
const VkDevice_T = Cvoid
const VkPhysicalDevice_T = Cvoid
const VkInstance_T = Cvoid
const VkQueue_T = Cvoid
const ID3D12Resource = Cvoid
const ID3D12CommandQueue = Cvoid
const intptr_t = Ptr{Cvoid}

# Automatically generated using Clang.jl wrap_c

@cenum(EVREye,
    Eye_Left = 0,
    Eye_Right = 1,
)
@cenum(ETextureType{Int32},
    TextureType_Invalid = -1,
    TextureType_DirectX = 0,
    TextureType_OpenGL = 1,
    TextureType_Vulkan = 2,
    TextureType_IOSurface = 3,
    TextureType_DirectX12 = 4,
    TextureType_DXGISharedHandle = 5,
    TextureType_Metal = 6,
)
@cenum(EColorSpace,
    ColorSpace_Auto = 0,
    ColorSpace_Gamma = 1,
    ColorSpace_Linear = 2,
)
@cenum(ETrackingResult,
    TrackingResult_Uninitialized = 1,
    TrackingResult_Calibrating_InProgress = 100,
    TrackingResult_Calibrating_OutOfRange = 101,
    TrackingResult_Running_OK = 200,
    TrackingResult_Running_OutOfRange = 201,
    TrackingResult_Fallback_RotationOnly = 300,
)
@cenum(ETrackedDeviceClass,
    TrackedDeviceClass_Invalid = 0,
    TrackedDeviceClass_HMD = 1,
    TrackedDeviceClass_Controller = 2,
    TrackedDeviceClass_GenericTracker = 3,
    TrackedDeviceClass_TrackingReference = 4,
    TrackedDeviceClass_DisplayRedirect = 5,
    TrackedDeviceClass_Max = 6,
)
@cenum(ETrackedControllerRole,
    TrackedControllerRole_Invalid = 0,
    TrackedControllerRole_LeftHand = 1,
    TrackedControllerRole_RightHand = 2,
    TrackedControllerRole_OptOut = 3,
    TrackedControllerRole_Treadmill = 4,
    TrackedControllerRole_Max = 4,
)
@cenum(ETrackingUniverseOrigin,
    TrackingUniverseSeated = 0,
    TrackingUniverseStanding = 1,
    TrackingUniverseRawAndUncalibrated = 2,
)
@cenum(EAdditionalRadioFeatures,
    AdditionalRadioFeatures_None = 0,
    AdditionalRadioFeatures_HTCLinkBox = 1,
    AdditionalRadioFeatures_InternalDongle = 2,
    AdditionalRadioFeatures_ExternalDongle = 4,
)
@cenum(ETrackedDeviceProperty,
    Prop_Invalid = 0,
    Prop_TrackingSystemName_String = 1000,
    Prop_ModelNumber_String = 1001,
    Prop_SerialNumber_String = 1002,
    Prop_RenderModelName_String = 1003,
    Prop_WillDriftInYaw_Bool = 1004,
    Prop_ManufacturerName_String = 1005,
    Prop_TrackingFirmwareVersion_String = 1006,
    Prop_HardwareRevision_String = 1007,
    Prop_AllWirelessDongleDescriptions_String = 1008,
    Prop_ConnectedWirelessDongle_String = 1009,
    Prop_DeviceIsWireless_Bool = 1010,
    Prop_DeviceIsCharging_Bool = 1011,
    Prop_DeviceBatteryPercentage_Float = 1012,
    Prop_StatusDisplayTransform_Matrix34 = 1013,
    Prop_Firmware_UpdateAvailable_Bool = 1014,
    Prop_Firmware_ManualUpdate_Bool = 1015,
    Prop_Firmware_ManualUpdateURL_String = 1016,
    Prop_HardwareRevision_Uint64 = 1017,
    Prop_FirmwareVersion_Uint64 = 1018,
    Prop_FPGAVersion_Uint64 = 1019,
    Prop_VRCVersion_Uint64 = 1020,
    Prop_RadioVersion_Uint64 = 1021,
    Prop_DongleVersion_Uint64 = 1022,
    Prop_BlockServerShutdown_Bool = 1023,
    Prop_CanUnifyCoordinateSystemWithHmd_Bool = 1024,
    Prop_ContainsProximitySensor_Bool = 1025,
    Prop_DeviceProvidesBatteryStatus_Bool = 1026,
    Prop_DeviceCanPowerOff_Bool = 1027,
    Prop_Firmware_ProgrammingTarget_String = 1028,
    Prop_DeviceClass_Int32 = 1029,
    Prop_HasCamera_Bool = 1030,
    Prop_DriverVersion_String = 1031,
    Prop_Firmware_ForceUpdateRequired_Bool = 1032,
    Prop_ViveSystemButtonFixRequired_Bool = 1033,
    Prop_ParentDriver_Uint64 = 1034,
    Prop_ResourceRoot_String = 1035,
    Prop_RegisteredDeviceType_String = 1036,
    Prop_InputProfilePath_String = 1037,
    Prop_NeverTracked_Bool = 1038,
    Prop_NumCameras_Int32 = 1039,
    Prop_CameraFrameLayout_Int32 = 1040,
    Prop_CameraStreamFormat_Int32 = 1041,
    Prop_AdditionalDeviceSettingsPath_String = 1042,
    Prop_Identifiable_Bool = 1043,
    Prop_BootloaderVersion_Uint64 = 1044,
    Prop_ReportsTimeSinceVSync_Bool = 2000,
    Prop_SecondsFromVsyncToPhotons_Float = 2001,
    Prop_DisplayFrequency_Float = 2002,
    Prop_UserIpdMeters_Float = 2003,
    Prop_CurrentUniverseId_Uint64 = 2004,
    Prop_PreviousUniverseId_Uint64 = 2005,
    Prop_DisplayFirmwareVersion_Uint64 = 2006,
    Prop_IsOnDesktop_Bool = 2007,
    Prop_DisplayMCType_Int32 = 2008,
    Prop_DisplayMCOffset_Float = 2009,
    Prop_DisplayMCScale_Float = 2010,
    Prop_EdidVendorID_Int32 = 2011,
    Prop_DisplayMCImageLeft_String = 2012,
    Prop_DisplayMCImageRight_String = 2013,
    Prop_DisplayGCBlackClamp_Float = 2014,
    Prop_EdidProductID_Int32 = 2015,
    Prop_CameraToHeadTransform_Matrix34 = 2016,
    Prop_DisplayGCType_Int32 = 2017,
    Prop_DisplayGCOffset_Float = 2018,
    Prop_DisplayGCScale_Float = 2019,
    Prop_DisplayGCPrescale_Float = 2020,
    Prop_DisplayGCImage_String = 2021,
    Prop_LensCenterLeftU_Float = 2022,
    Prop_LensCenterLeftV_Float = 2023,
    Prop_LensCenterRightU_Float = 2024,
    Prop_LensCenterRightV_Float = 2025,
    Prop_UserHeadToEyeDepthMeters_Float = 2026,
    Prop_CameraFirmwareVersion_Uint64 = 2027,
    Prop_CameraFirmwareDescription_String = 2028,
    Prop_DisplayFPGAVersion_Uint64 = 2029,
    Prop_DisplayBootloaderVersion_Uint64 = 2030,
    Prop_DisplayHardwareVersion_Uint64 = 2031,
    Prop_AudioFirmwareVersion_Uint64 = 2032,
    Prop_CameraCompatibilityMode_Int32 = 2033,
    Prop_ScreenshotHorizontalFieldOfViewDegrees_Float = 2034,
    Prop_ScreenshotVerticalFieldOfViewDegrees_Float = 2035,
    Prop_DisplaySuppressed_Bool = 2036,
    Prop_DisplayAllowNightMode_Bool = 2037,
    Prop_DisplayMCImageWidth_Int32 = 2038,
    Prop_DisplayMCImageHeight_Int32 = 2039,
    Prop_DisplayMCImageNumChannels_Int32 = 2040,
    Prop_DisplayMCImageData_Binary = 2041,
    Prop_SecondsFromPhotonsToVblank_Float = 2042,
    Prop_DriverDirectModeSendsVsyncEvents_Bool = 2043,
    Prop_DisplayDebugMode_Bool = 2044,
    Prop_GraphicsAdapterLuid_Uint64 = 2045,
    Prop_DriverProvidedChaperonePath_String = 2048,
    Prop_ExpectedTrackingReferenceCount_Int32 = 2049,
    Prop_ExpectedControllerCount_Int32 = 2050,
    Prop_NamedIconPathControllerLeftDeviceOff_String = 2051,
    Prop_NamedIconPathControllerRightDeviceOff_String = 2052,
    Prop_NamedIconPathTrackingReferenceDeviceOff_String = 2053,
    Prop_DoNotApplyPrediction_Bool = 2054,
    Prop_CameraToHeadTransforms_Matrix34_Array = 2055,
    Prop_DistortionMeshResolution_Int32 = 2056,
    Prop_DriverIsDrawingControllers_Bool = 2057,
    Prop_DriverRequestsApplicationPause_Bool = 2058,
    Prop_DriverRequestsReducedRendering_Bool = 2059,
    Prop_MinimumIpdStepMeters_Float = 2060,
    Prop_AudioBridgeFirmwareVersion_Uint64 = 2061,
    Prop_ImageBridgeFirmwareVersion_Uint64 = 2062,
    Prop_ImuToHeadTransform_Matrix34 = 2063,
    Prop_ImuFactoryGyroBias_Vector3 = 2064,
    Prop_ImuFactoryGyroScale_Vector3 = 2065,
    Prop_ImuFactoryAccelerometerBias_Vector3 = 2066,
    Prop_ImuFactoryAccelerometerScale_Vector3 = 2067,
    Prop_ConfigurationIncludesLighthouse20Features_Bool = 2069,
    Prop_AdditionalRadioFeatures_Uint64 = 2070,
    Prop_CameraWhiteBalance_Vector4_Array = 2071,
    Prop_CameraDistortionFunction_Int32_Array = 2072,
    Prop_CameraDistortionCoefficients_Float_Array = 2073,
    Prop_ExpectedControllerType_String = 2074,
    Prop_DriverRequestedMuraCorrectionMode_Int32 = 2200,
    Prop_DriverRequestedMuraFeather_InnerLeft_Int32 = 2201,
    Prop_DriverRequestedMuraFeather_InnerRight_Int32 = 2202,
    Prop_DriverRequestedMuraFeather_InnerTop_Int32 = 2203,
    Prop_DriverRequestedMuraFeather_InnerBottom_Int32 = 2204,
    Prop_DriverRequestedMuraFeather_OuterLeft_Int32 = 2205,
    Prop_DriverRequestedMuraFeather_OuterRight_Int32 = 2206,
    Prop_DriverRequestedMuraFeather_OuterTop_Int32 = 2207,
    Prop_DriverRequestedMuraFeather_OuterBottom_Int32 = 2208,
    Prop_AttachedDeviceId_String = 3000,
    Prop_SupportedButtons_Uint64 = 3001,
    Prop_Axis0Type_Int32 = 3002,
    Prop_Axis1Type_Int32 = 3003,
    Prop_Axis2Type_Int32 = 3004,
    Prop_Axis3Type_Int32 = 3005,
    Prop_Axis4Type_Int32 = 3006,
    Prop_ControllerRoleHint_Int32 = 3007,
    Prop_FieldOfViewLeftDegrees_Float = 4000,
    Prop_FieldOfViewRightDegrees_Float = 4001,
    Prop_FieldOfViewTopDegrees_Float = 4002,
    Prop_FieldOfViewBottomDegrees_Float = 4003,
    Prop_TrackingRangeMinimumMeters_Float = 4004,
    Prop_TrackingRangeMaximumMeters_Float = 4005,
    Prop_ModeLabel_String = 4006,
    Prop_IconPathName_String = 5000,
    Prop_NamedIconPathDeviceOff_String = 5001,
    Prop_NamedIconPathDeviceSearching_String = 5002,
    Prop_NamedIconPathDeviceSearchingAlert_String = 5003,
    Prop_NamedIconPathDeviceReady_String = 5004,
    Prop_NamedIconPathDeviceReadyAlert_String = 5005,
    Prop_NamedIconPathDeviceNotReady_String = 5006,
    Prop_NamedIconPathDeviceStandby_String = 5007,
    Prop_NamedIconPathDeviceAlertLow_String = 5008,
    Prop_DisplayHiddenArea_Binary_Start = 5100,
    Prop_DisplayHiddenArea_Binary_End = 5150,
    Prop_ParentContainer = 5151,
    Prop_UserConfigPath_String = 6000,
    Prop_InstallPath_String = 6001,
    Prop_HasDisplayComponent_Bool = 6002,
    Prop_HasControllerComponent_Bool = 6003,
    Prop_HasCameraComponent_Bool = 6004,
    Prop_HasDriverDirectModeComponent_Bool = 6005,
    Prop_HasVirtualDisplayComponent_Bool = 6006,
    Prop_HasSpatialAnchorsSupport_Bool = 6007,
    Prop_ControllerType_String = 7000,
    Prop_LegacyInputProfile_String = 7001,
    Prop_ControllerHandSelectionPriority_Int32 = 7002,
    Prop_VendorSpecific_Reserved_Start = 10000,
    Prop_VendorSpecific_Reserved_End = 10999,
    Prop_TrackedDeviceProperty_Max = 1000000,
)
@cenum(ETrackedPropertyError,
    TrackedProp_Success = 0,
    TrackedProp_WrongDataType = 1,
    TrackedProp_WrongDeviceClass = 2,
    TrackedProp_BufferTooSmall = 3,
    TrackedProp_UnknownProperty = 4,
    TrackedProp_InvalidDevice = 5,
    TrackedProp_CouldNotContactServer = 6,
    TrackedProp_ValueNotProvidedByDevice = 7,
    TrackedProp_StringExceedsMaximumLength = 8,
    TrackedProp_NotYetAvailable = 9,
    TrackedProp_PermissionDenied = 10,
    TrackedProp_InvalidOperation = 11,
    TrackedProp_CannotWriteToWildcards = 12,
    TrackedProp_IPCReadFailure = 13,
)
@cenum(EVRSubmitFlags,
    Submit_Default = 0,
    Submit_LensDistortionAlreadyApplied = 1,
    Submit_GlRenderBuffer = 2,
    Submit_Reserved = 4,
    Submit_TextureWithPose = 8,
    Submit_TextureWithDepth = 16,
)
@cenum(EVRState{Int32},
    VRState_Undefined = -1,
    VRState_Off = 0,
    VRState_Searching = 1,
    VRState_Searching_Alert = 2,
    VRState_Ready = 3,
    VRState_Ready_Alert = 4,
    VRState_NotReady = 5,
    VRState_Standby = 6,
    VRState_Ready_Alert_Low = 7,
)
@cenum(EVREventType,
    VREvent_None = 0,
    VREvent_TrackedDeviceActivated = 100,
    VREvent_TrackedDeviceDeactivated = 101,
    VREvent_TrackedDeviceUpdated = 102,
    VREvent_TrackedDeviceUserInteractionStarted = 103,
    VREvent_TrackedDeviceUserInteractionEnded = 104,
    VREvent_IpdChanged = 105,
    VREvent_EnterStandbyMode = 106,
    VREvent_LeaveStandbyMode = 107,
    VREvent_TrackedDeviceRoleChanged = 108,
    VREvent_WatchdogWakeUpRequested = 109,
    VREvent_LensDistortionChanged = 110,
    VREvent_PropertyChanged = 111,
    VREvent_WirelessDisconnect = 112,
    VREvent_WirelessReconnect = 113,
    VREvent_ButtonPress = 200,
    VREvent_ButtonUnpress = 201,
    VREvent_ButtonTouch = 202,
    VREvent_ButtonUntouch = 203,
    VREvent_DualAnalog_Press = 250,
    VREvent_DualAnalog_Unpress = 251,
    VREvent_DualAnalog_Touch = 252,
    VREvent_DualAnalog_Untouch = 253,
    VREvent_DualAnalog_Move = 254,
    VREvent_DualAnalog_ModeSwitch1 = 255,
    VREvent_DualAnalog_ModeSwitch2 = 256,
    VREvent_DualAnalog_Cancel = 257,
    VREvent_MouseMove = 300,
    VREvent_MouseButtonDown = 301,
    VREvent_MouseButtonUp = 302,
    VREvent_FocusEnter = 303,
    VREvent_FocusLeave = 304,
    VREvent_ScrollDiscrete = 305,
    VREvent_TouchPadMove = 306,
    VREvent_OverlayFocusChanged = 307,
    VREvent_ReloadOverlays = 308,
    VREvent_ScrollSmooth = 309,
    VREvent_InputFocusCaptured = 400,
    VREvent_InputFocusReleased = 401,
    VREvent_SceneFocusLost = 402,
    VREvent_SceneFocusGained = 403,
    VREvent_SceneApplicationChanged = 404,
    VREvent_SceneFocusChanged = 405,
    VREvent_InputFocusChanged = 406,
    VREvent_SceneApplicationSecondaryRenderingStarted = 407,
    VREvent_SceneApplicationUsingWrongGraphicsAdapter = 408,
    VREvent_ActionBindingReloaded = 409,
    VREvent_HideRenderModels = 410,
    VREvent_ShowRenderModels = 411,
    VREvent_ConsoleOpened = 420,
    VREvent_ConsoleClosed = 421,
    VREvent_OverlayShown = 500,
    VREvent_OverlayHidden = 501,
    VREvent_DashboardActivated = 502,
    VREvent_DashboardDeactivated = 503,
    VREvent_DashboardThumbSelected = 504,
    VREvent_DashboardRequested = 505,
    VREvent_ResetDashboard = 506,
    VREvent_RenderToast = 507,
    VREvent_ImageLoaded = 508,
    VREvent_ShowKeyboard = 509,
    VREvent_HideKeyboard = 510,
    VREvent_OverlayGamepadFocusGained = 511,
    VREvent_OverlayGamepadFocusLost = 512,
    VREvent_OverlaySharedTextureChanged = 513,
    VREvent_ScreenshotTriggered = 516,
    VREvent_ImageFailed = 517,
    VREvent_DashboardOverlayCreated = 518,
    VREvent_SwitchGamepadFocus = 519,
    VREvent_RequestScreenshot = 520,
    VREvent_ScreenshotTaken = 521,
    VREvent_ScreenshotFailed = 522,
    VREvent_SubmitScreenshotToDashboard = 523,
    VREvent_ScreenshotProgressToDashboard = 524,
    VREvent_PrimaryDashboardDeviceChanged = 525,
    VREvent_RoomViewShown = 526,
    VREvent_RoomViewHidden = 527,
    VREvent_ShowUI = 528,
    VREvent_Notification_Shown = 600,
    VREvent_Notification_Hidden = 601,
    VREvent_Notification_BeginInteraction = 602,
    VREvent_Notification_Destroyed = 603,
    VREvent_Quit = 700,
    VREvent_ProcessQuit = 701,
    VREvent_QuitAborted_UserPrompt = 702,
    VREvent_QuitAcknowledged = 703,
    VREvent_DriverRequestedQuit = 704,
    VREvent_ChaperoneDataHasChanged = 800,
    VREvent_ChaperoneUniverseHasChanged = 801,
    VREvent_ChaperoneTempDataHasChanged = 802,
    VREvent_ChaperoneSettingsHaveChanged = 803,
    VREvent_SeatedZeroPoseReset = 804,
    VREvent_ChaperoneFlushCache = 805,
    VREvent_AudioSettingsHaveChanged = 820,
    VREvent_BackgroundSettingHasChanged = 850,
    VREvent_CameraSettingsHaveChanged = 851,
    VREvent_ReprojectionSettingHasChanged = 852,
    VREvent_ModelSkinSettingsHaveChanged = 853,
    VREvent_EnvironmentSettingsHaveChanged = 854,
    VREvent_PowerSettingsHaveChanged = 855,
    VREvent_EnableHomeAppSettingsHaveChanged = 856,
    VREvent_SteamVRSectionSettingChanged = 857,
    VREvent_LighthouseSectionSettingChanged = 858,
    VREvent_NullSectionSettingChanged = 859,
    VREvent_UserInterfaceSectionSettingChanged = 860,
    VREvent_NotificationsSectionSettingChanged = 861,
    VREvent_KeyboardSectionSettingChanged = 862,
    VREvent_PerfSectionSettingChanged = 863,
    VREvent_DashboardSectionSettingChanged = 864,
    VREvent_WebInterfaceSectionSettingChanged = 865,
    VREvent_TrackersSectionSettingChanged = 866,
    VREvent_LastKnownSectionSettingChanged = 867,
    VREvent_DismissedWarningsSectionSettingChanged = 868,
    VREvent_StatusUpdate = 900,
    VREvent_WebInterface_InstallDriverCompleted = 950,
    VREvent_MCImageUpdated = 1000,
    VREvent_FirmwareUpdateStarted = 1100,
    VREvent_FirmwareUpdateFinished = 1101,
    VREvent_KeyboardClosed = 1200,
    VREvent_KeyboardCharInput = 1201,
    VREvent_KeyboardDone = 1202,
    VREvent_ApplicationTransitionStarted = 1300,
    VREvent_ApplicationTransitionAborted = 1301,
    VREvent_ApplicationTransitionNewAppStarted = 1302,
    VREvent_ApplicationListUpdated = 1303,
    VREvent_ApplicationMimeTypeLoad = 1304,
    VREvent_ApplicationTransitionNewAppLaunchComplete = 1305,
    VREvent_ProcessConnected = 1306,
    VREvent_ProcessDisconnected = 1307,
    VREvent_Compositor_MirrorWindowShown = 1400,
    VREvent_Compositor_MirrorWindowHidden = 1401,
    VREvent_Compositor_ChaperoneBoundsShown = 1410,
    VREvent_Compositor_ChaperoneBoundsHidden = 1411,
    VREvent_TrackedCamera_StartVideoStream = 1500,
    VREvent_TrackedCamera_StopVideoStream = 1501,
    VREvent_TrackedCamera_PauseVideoStream = 1502,
    VREvent_TrackedCamera_ResumeVideoStream = 1503,
    VREvent_TrackedCamera_EditingSurface = 1550,
    VREvent_PerformanceTest_EnableCapture = 1600,
    VREvent_PerformanceTest_DisableCapture = 1601,
    VREvent_PerformanceTest_FidelityLevel = 1602,
    VREvent_MessageOverlay_Closed = 1650,
    VREvent_MessageOverlayCloseRequested = 1651,
    VREvent_Input_HapticVibration = 1700,
    VREvent_Input_BindingLoadFailed = 1701,
    VREvent_Input_BindingLoadSuccessful = 1702,
    VREvent_Input_ActionManifestReloaded = 1703,
    VREvent_Input_ActionManifestLoadFailed = 1704,
    VREvent_Input_ProgressUpdate = 1705,
    VREvent_Input_TrackerActivated = 1706,
    VREvent_Input_BindingsUpdated = 1707,
    VREvent_SpatialAnchors_PoseUpdated = 1800,
    VREvent_SpatialAnchors_DescriptorUpdated = 1801,
    VREvent_SpatialAnchors_RequestPoseUpdate = 1802,
    VREvent_SpatialAnchors_RequestDescriptorUpdate = 1803,
    VREvent_VendorSpecific_Reserved_Start = 10000,
    VREvent_VendorSpecific_Reserved_End = 19999,
)
@cenum(EDeviceActivityLevel{Int32},
    k_EDeviceActivityLevel_Unknown = -1,
    k_EDeviceActivityLevel_Idle = 0,
    k_EDeviceActivityLevel_UserInteraction = 1,
    k_EDeviceActivityLevel_UserInteraction_Timeout = 2,
    k_EDeviceActivityLevel_Standby = 3,
)
@cenum(EVRButtonId,
    k_EButton_System = 0,
    k_EButton_ApplicationMenu = 1,
    k_EButton_Grip = 2,
    k_EButton_DPad_Left = 3,
    k_EButton_DPad_Up = 4,
    k_EButton_DPad_Right = 5,
    k_EButton_DPad_Down = 6,
    k_EButton_A = 7,
    k_EButton_ProximitySensor = 31,
    k_EButton_Axis0 = 32,
    k_EButton_Axis1 = 33,
    k_EButton_Axis2 = 34,
    k_EButton_Axis3 = 35,
    k_EButton_Axis4 = 36,
    k_EButton_SteamVR_Touchpad = 32,
    k_EButton_SteamVR_Trigger = 33,
    k_EButton_Dashboard_Back = 2,
    k_EButton_Knuckles_A = 2,
    k_EButton_Knuckles_B = 1,
    k_EButton_Knuckles_JoyStick = 35,
    k_EButton_Max = 64,
)
@cenum(EVRMouseButton,
    VRMouseButton_Left = 1,
    VRMouseButton_Right = 2,
    VRMouseButton_Middle = 4,
)
@cenum(EDualAnalogWhich,
    k_EDualAnalog_Left = 0,
    k_EDualAnalog_Right = 1,
)
@cenum(EShowUIType,
    ShowUI_ControllerBinding = 0,
    ShowUI_ManageTrackers = 1,
    ShowUI_QuickStart = 2,
    ShowUI_Pairing = 3,
)
@cenum(EVRInputError,
    VRInputError_None = 0,
    VRInputError_NameNotFound = 1,
    VRInputError_WrongType = 2,
    VRInputError_InvalidHandle = 3,
    VRInputError_InvalidParam = 4,
    VRInputError_NoSteam = 5,
    VRInputError_MaxCapacityReached = 6,
    VRInputError_IPCError = 7,
    VRInputError_NoActiveActionSet = 8,
    VRInputError_InvalidDevice = 9,
    VRInputError_InvalidSkeleton = 10,
    VRInputError_InvalidBoneCount = 11,
    VRInputError_InvalidCompressedData = 12,
    VRInputError_NoData = 13,
    VRInputError_BufferTooSmall = 14,
    VRInputError_MismatchedActionManifest = 15,
    VRInputError_MissingSkeletonData = 16,
    VRInputError_InvalidBoneIndex = 17,
)
@cenum(EVRSpatialAnchorError,
    VRSpatialAnchorError_Success = 0,
    VRSpatialAnchorError_Internal = 1,
    VRSpatialAnchorError_UnknownHandle = 2,
    VRSpatialAnchorError_ArrayTooSmall = 3,
    VRSpatialAnchorError_InvalidDescriptorChar = 4,
    VRSpatialAnchorError_NotYetAvailable = 5,
    VRSpatialAnchorError_NotAvailableInThisUniverse = 6,
    VRSpatialAnchorError_PermanentlyUnavailable = 7,
    VRSpatialAnchorError_WrongDriver = 8,
    VRSpatialAnchorError_DescriptorTooLong = 9,
    VRSpatialAnchorError_Unknown = 10,
    VRSpatialAnchorError_NoRoomCalibration = 11,
    VRSpatialAnchorError_InvalidArgument = 12,
    VRSpatialAnchorError_UnknownDriver = 13,
)
@cenum(EHiddenAreaMeshType,
    k_eHiddenAreaMesh_Standard = 0,
    k_eHiddenAreaMesh_Inverse = 1,
    k_eHiddenAreaMesh_LineLoop = 2,
    k_eHiddenAreaMesh_Max = 3,
)
@cenum(EVRControllerAxisType,
    k_eControllerAxis_None = 0,
    k_eControllerAxis_TrackPad = 1,
    k_eControllerAxis_Joystick = 2,
    k_eControllerAxis_Trigger = 3,
)
@cenum(EVRControllerEventOutputType,
    ControllerEventOutput_OSEvents = 0,
    ControllerEventOutput_VREvents = 1,
)
@cenum(ECollisionBoundsStyle,
    COLLISION_BOUNDS_STYLE_BEGINNER = 0,
    COLLISION_BOUNDS_STYLE_INTERMEDIATE = 1,
    COLLISION_BOUNDS_STYLE_SQUARES = 2,
    COLLISION_BOUNDS_STYLE_ADVANCED = 3,
    COLLISION_BOUNDS_STYLE_NONE = 4,
    COLLISION_BOUNDS_STYLE_COUNT = 5,
)
@cenum(EVROverlayError,
    VROverlayError_None = 0,
    VROverlayError_UnknownOverlay = 10,
    VROverlayError_InvalidHandle = 11,
    VROverlayError_PermissionDenied = 12,
    VROverlayError_OverlayLimitExceeded = 13,
    VROverlayError_WrongVisibilityType = 14,
    VROverlayError_KeyTooLong = 15,
    VROverlayError_NameTooLong = 16,
    VROverlayError_KeyInUse = 17,
    VROverlayError_WrongTransformType = 18,
    VROverlayError_InvalidTrackedDevice = 19,
    VROverlayError_InvalidParameter = 20,
    VROverlayError_ThumbnailCantBeDestroyed = 21,
    VROverlayError_ArrayTooSmall = 22,
    VROverlayError_RequestFailed = 23,
    VROverlayError_InvalidTexture = 24,
    VROverlayError_UnableToLoadFile = 25,
    VROverlayError_KeyboardAlreadyInUse = 26,
    VROverlayError_NoNeighbor = 27,
    VROverlayError_TooManyMaskPrimitives = 29,
    VROverlayError_BadMaskPrimitive = 30,
    VROverlayError_TextureAlreadyLocked = 31,
    VROverlayError_TextureLockCapacityReached = 32,
    VROverlayError_TextureNotLocked = 33,
)
@cenum(EVRApplicationType,
    VRApplication_Other = 0,
    VRApplication_Scene = 1,
    VRApplication_Overlay = 2,
    VRApplication_Background = 3,
    VRApplication_Utility = 4,
    VRApplication_VRMonitor = 5,
    VRApplication_SteamWatchdog = 6,
    VRApplication_Bootstrapper = 7,
    VRApplication_WebHelper = 8,
    VRApplication_Max = 9,
)
@cenum(EVRFirmwareError,
    VRFirmwareError_None = 0,
    VRFirmwareError_Success = 1,
    VRFirmwareError_Fail = 2,
)
@cenum(EVRNotificationError,
    VRNotificationError_OK = 0,
    VRNotificationError_InvalidNotificationId = 100,
    VRNotificationError_NotificationQueueFull = 101,
    VRNotificationError_InvalidOverlayHandle = 102,
    VRNotificationError_SystemWithUserValueAlreadyExists = 103,
)
@cenum(EVRSkeletalMotionRange,
    VRSkeletalMotionRange_WithController = 0,
    VRSkeletalMotionRange_WithoutController = 1,
)
@cenum(EVRSkeletalTrackingLevel,
    VRSkeletalTracking_Estimated = 0,
    VRSkeletalTracking_Partial = 1,
    VRSkeletalTracking_Full = 2,
    VRSkeletalTrackingLevel_Count = 3,
    VRSkeletalTrackingLevel_Max = 2,
)
@cenum(EVRInitError,
    VRInitError_None = 0,
    VRInitError_Unknown = 1,
    VRInitError_Init_InstallationNotFound = 100,
    VRInitError_Init_InstallationCorrupt = 101,
    VRInitError_Init_VRClientDLLNotFound = 102,
    VRInitError_Init_FileNotFound = 103,
    VRInitError_Init_FactoryNotFound = 104,
    VRInitError_Init_InterfaceNotFound = 105,
    VRInitError_Init_InvalidInterface = 106,
    VRInitError_Init_UserConfigDirectoryInvalid = 107,
    VRInitError_Init_HmdNotFound = 108,
    VRInitError_Init_NotInitialized = 109,
    VRInitError_Init_PathRegistryNotFound = 110,
    VRInitError_Init_NoConfigPath = 111,
    VRInitError_Init_NoLogPath = 112,
    VRInitError_Init_PathRegistryNotWritable = 113,
    VRInitError_Init_AppInfoInitFailed = 114,
    VRInitError_Init_Retry = 115,
    VRInitError_Init_InitCanceledByUser = 116,
    VRInitError_Init_AnotherAppLaunching = 117,
    VRInitError_Init_SettingsInitFailed = 118,
    VRInitError_Init_ShuttingDown = 119,
    VRInitError_Init_TooManyObjects = 120,
    VRInitError_Init_NoServerForBackgroundApp = 121,
    VRInitError_Init_NotSupportedWithCompositor = 122,
    VRInitError_Init_NotAvailableToUtilityApps = 123,
    VRInitError_Init_Internal = 124,
    VRInitError_Init_HmdDriverIdIsNone = 125,
    VRInitError_Init_HmdNotFoundPresenceFailed = 126,
    VRInitError_Init_VRMonitorNotFound = 127,
    VRInitError_Init_VRMonitorStartupFailed = 128,
    VRInitError_Init_LowPowerWatchdogNotSupported = 129,
    VRInitError_Init_InvalidApplicationType = 130,
    VRInitError_Init_NotAvailableToWatchdogApps = 131,
    VRInitError_Init_WatchdogDisabledInSettings = 132,
    VRInitError_Init_VRDashboardNotFound = 133,
    VRInitError_Init_VRDashboardStartupFailed = 134,
    VRInitError_Init_VRHomeNotFound = 135,
    VRInitError_Init_VRHomeStartupFailed = 136,
    VRInitError_Init_RebootingBusy = 137,
    VRInitError_Init_FirmwareUpdateBusy = 138,
    VRInitError_Init_FirmwareRecoveryBusy = 139,
    VRInitError_Init_USBServiceBusy = 140,
    VRInitError_Init_VRWebHelperStartupFailed = 141,
    VRInitError_Init_TrackerManagerInitFailed = 142,
    VRInitError_Driver_Failed = 200,
    VRInitError_Driver_Unknown = 201,
    VRInitError_Driver_HmdUnknown = 202,
    VRInitError_Driver_NotLoaded = 203,
    VRInitError_Driver_RuntimeOutOfDate = 204,
    VRInitError_Driver_HmdInUse = 205,
    VRInitError_Driver_NotCalibrated = 206,
    VRInitError_Driver_CalibrationInvalid = 207,
    VRInitError_Driver_HmdDisplayNotFound = 208,
    VRInitError_Driver_TrackedDeviceInterfaceUnknown = 209,
    VRInitError_Driver_HmdDriverIdOutOfBounds = 211,
    VRInitError_Driver_HmdDisplayMirrored = 212,
    VRInitError_IPC_ServerInitFailed = 300,
    VRInitError_IPC_ConnectFailed = 301,
    VRInitError_IPC_SharedStateInitFailed = 302,
    VRInitError_IPC_CompositorInitFailed = 303,
    VRInitError_IPC_MutexInitFailed = 304,
    VRInitError_IPC_Failed = 305,
    VRInitError_IPC_CompositorConnectFailed = 306,
    VRInitError_IPC_CompositorInvalidConnectResponse = 307,
    VRInitError_IPC_ConnectFailedAfterMultipleAttempts = 308,
    VRInitError_Compositor_Failed = 400,
    VRInitError_Compositor_D3D11HardwareRequired = 401,
    VRInitError_Compositor_FirmwareRequiresUpdate = 402,
    VRInitError_Compositor_OverlayInitFailed = 403,
    VRInitError_Compositor_ScreenshotsInitFailed = 404,
    VRInitError_Compositor_UnableToCreateDevice = 405,
    VRInitError_Compositor_SharedStateIsNull = 406,
    VRInitError_Compositor_NotificationManagerIsNull = 407,
    VRInitError_Compositor_ResourceManagerClientIsNull = 408,
    VRInitError_Compositor_MessageOverlaySharedStateInitFailure = 409,
    VRInitError_Compositor_PropertiesInterfaceIsNull = 410,
    VRInitError_Compositor_CreateFullscreenWindowFailed = 411,
    VRInitError_Compositor_SettingsInterfaceIsNull = 412,
    VRInitError_Compositor_FailedToShowWindow = 413,
    VRInitError_Compositor_DistortInterfaceIsNull = 414,
    VRInitError_Compositor_DisplayFrequencyFailure = 415,
    VRInitError_Compositor_RendererInitializationFailed = 416,
    VRInitError_Compositor_DXGIFactoryInterfaceIsNull = 417,
    VRInitError_Compositor_DXGIFactoryCreateFailed = 418,
    VRInitError_Compositor_DXGIFactoryQueryFailed = 419,
    VRInitError_Compositor_InvalidAdapterDesktop = 420,
    VRInitError_Compositor_InvalidHmdAttachment = 421,
    VRInitError_Compositor_InvalidOutputDesktop = 422,
    VRInitError_Compositor_InvalidDeviceProvided = 423,
    VRInitError_Compositor_D3D11RendererInitializationFailed = 424,
    VRInitError_Compositor_FailedToFindDisplayMode = 425,
    VRInitError_Compositor_FailedToCreateSwapChain = 426,
    VRInitError_Compositor_FailedToGetBackBuffer = 427,
    VRInitError_Compositor_FailedToCreateRenderTarget = 428,
    VRInitError_Compositor_FailedToCreateDXGI2SwapChain = 429,
    VRInitError_Compositor_FailedtoGetDXGI2BackBuffer = 430,
    VRInitError_Compositor_FailedToCreateDXGI2RenderTarget = 431,
    VRInitError_Compositor_FailedToGetDXGIDeviceInterface = 432,
    VRInitError_Compositor_SelectDisplayMode = 433,
    VRInitError_Compositor_FailedToCreateNvAPIRenderTargets = 434,
    VRInitError_Compositor_NvAPISetDisplayMode = 435,
    VRInitError_Compositor_FailedToCreateDirectModeDisplay = 436,
    VRInitError_Compositor_InvalidHmdPropertyContainer = 437,
    VRInitError_Compositor_UpdateDisplayFrequency = 438,
    VRInitError_Compositor_CreateRasterizerState = 439,
    VRInitError_Compositor_CreateWireframeRasterizerState = 440,
    VRInitError_Compositor_CreateSamplerState = 441,
    VRInitError_Compositor_CreateClampToBorderSamplerState = 442,
    VRInitError_Compositor_CreateAnisoSamplerState = 443,
    VRInitError_Compositor_CreateOverlaySamplerState = 444,
    VRInitError_Compositor_CreatePanoramaSamplerState = 445,
    VRInitError_Compositor_CreateFontSamplerState = 446,
    VRInitError_Compositor_CreateNoBlendState = 447,
    VRInitError_Compositor_CreateBlendState = 448,
    VRInitError_Compositor_CreateAlphaBlendState = 449,
    VRInitError_Compositor_CreateBlendStateMaskR = 450,
    VRInitError_Compositor_CreateBlendStateMaskG = 451,
    VRInitError_Compositor_CreateBlendStateMaskB = 452,
    VRInitError_Compositor_CreateDepthStencilState = 453,
    VRInitError_Compositor_CreateDepthStencilStateNoWrite = 454,
    VRInitError_Compositor_CreateDepthStencilStateNoDepth = 455,
    VRInitError_Compositor_CreateFlushTexture = 456,
    VRInitError_Compositor_CreateDistortionSurfaces = 457,
    VRInitError_Compositor_CreateConstantBuffer = 458,
    VRInitError_Compositor_CreateHmdPoseConstantBuffer = 459,
    VRInitError_Compositor_CreateHmdPoseStagingConstantBuffer = 460,
    VRInitError_Compositor_CreateSharedFrameInfoConstantBuffer = 461,
    VRInitError_Compositor_CreateOverlayConstantBuffer = 462,
    VRInitError_Compositor_CreateSceneTextureIndexConstantBuffer = 463,
    VRInitError_Compositor_CreateReadableSceneTextureIndexConstantBuffer = 464,
    VRInitError_Compositor_CreateLayerGraphicsTextureIndexConstantBuffer = 465,
    VRInitError_Compositor_CreateLayerComputeTextureIndexConstantBuffer = 466,
    VRInitError_Compositor_CreateLayerComputeSceneTextureIndexConstantBuffer = 467,
    VRInitError_Compositor_CreateComputeHmdPoseConstantBuffer = 468,
    VRInitError_Compositor_CreateGeomConstantBuffer = 469,
    VRInitError_Compositor_CreatePanelMaskConstantBuffer = 470,
    VRInitError_Compositor_CreatePixelSimUBO = 471,
    VRInitError_Compositor_CreateMSAARenderTextures = 472,
    VRInitError_Compositor_CreateResolveRenderTextures = 473,
    VRInitError_Compositor_CreateComputeResolveRenderTextures = 474,
    VRInitError_Compositor_CreateDriverDirectModeResolveTextures = 475,
    VRInitError_Compositor_OpenDriverDirectModeResolveTextures = 476,
    VRInitError_Compositor_CreateFallbackSyncTexture = 477,
    VRInitError_Compositor_ShareFallbackSyncTexture = 478,
    VRInitError_Compositor_CreateOverlayIndexBuffer = 479,
    VRInitError_Compositor_CreateOverlayVertextBuffer = 480,
    VRInitError_Compositor_CreateTextVertexBuffer = 481,
    VRInitError_Compositor_CreateTextIndexBuffer = 482,
    VRInitError_Compositor_CreateMirrorTextures = 483,
    VRInitError_Compositor_CreateLastFrameRenderTexture = 484,
    VRInitError_VendorSpecific_UnableToConnectToOculusRuntime = 1000,
    VRInitError_VendorSpecific_WindowsNotInDevMode = 1001,
    VRInitError_VendorSpecific_HmdFound_CantOpenDevice = 1101,
    VRInitError_VendorSpecific_HmdFound_UnableToRequestConfigStart = 1102,
    VRInitError_VendorSpecific_HmdFound_NoStoredConfig = 1103,
    VRInitError_VendorSpecific_HmdFound_ConfigTooBig = 1104,
    VRInitError_VendorSpecific_HmdFound_ConfigTooSmall = 1105,
    VRInitError_VendorSpecific_HmdFound_UnableToInitZLib = 1106,
    VRInitError_VendorSpecific_HmdFound_CantReadFirmwareVersion = 1107,
    VRInitError_VendorSpecific_HmdFound_UnableToSendUserDataStart = 1108,
    VRInitError_VendorSpecific_HmdFound_UnableToGetUserDataStart = 1109,
    VRInitError_VendorSpecific_HmdFound_UnableToGetUserDataNext = 1110,
    VRInitError_VendorSpecific_HmdFound_UserDataAddressRange = 1111,
    VRInitError_VendorSpecific_HmdFound_UserDataError = 1112,
    VRInitError_VendorSpecific_HmdFound_ConfigFailedSanityCheck = 1113,
    VRInitError_Steam_SteamInstallationNotFound = 2000,
)
@cenum(EVRScreenshotType,
    VRScreenshotType_None = 0,
    VRScreenshotType_Mono = 1,
    VRScreenshotType_Stereo = 2,
    VRScreenshotType_Cubemap = 3,
    VRScreenshotType_MonoPanorama = 4,
    VRScreenshotType_StereoPanorama = 5,
)
@cenum(EVRScreenshotPropertyFilenames,
    VRScreenshotPropertyFilenames_Preview = 0,
    VRScreenshotPropertyFilenames_VR = 1,
)
@cenum(EVRTrackedCameraError,
    VRTrackedCameraError_None = 0,
    VRTrackedCameraError_OperationFailed = 100,
    VRTrackedCameraError_InvalidHandle = 101,
    VRTrackedCameraError_InvalidFrameHeaderVersion = 102,
    VRTrackedCameraError_OutOfHandles = 103,
    VRTrackedCameraError_IPCFailure = 104,
    VRTrackedCameraError_NotSupportedForThisDevice = 105,
    VRTrackedCameraError_SharedMemoryFailure = 106,
    VRTrackedCameraError_FrameBufferingFailure = 107,
    VRTrackedCameraError_StreamSetupFailure = 108,
    VRTrackedCameraError_InvalidGLTextureId = 109,
    VRTrackedCameraError_InvalidSharedTextureHandle = 110,
    VRTrackedCameraError_FailedToGetGLTextureId = 111,
    VRTrackedCameraError_SharedTextureFailure = 112,
    VRTrackedCameraError_NoFrameAvailable = 113,
    VRTrackedCameraError_InvalidArgument = 114,
    VRTrackedCameraError_InvalidFrameBufferSize = 115,
)
@cenum(EVRTrackedCameraFrameLayout,
    Mono = 1,
    Stereo = 2,
    VerticalLayout = 16,
    HorizontalLayout = 32,
)
@cenum(EVRTrackedCameraFrameType,
    VRTrackedCameraFrameType_Distorted = 0,
    VRTrackedCameraFrameType_Undistorted = 1,
    VRTrackedCameraFrameType_MaximumUndistorted = 2,
    MAX_CAMERA_FRAME_TYPES = 3,
)
@cenum(EVRDistortionFunctionType,
    VRDistortionFunctionType_None = 0,
    VRDistortionFunctionType_FTheta = 1,
    VRDistortionFunctionType_Extended_FTheta = 2,
    MAX_DISTORTION_FUNCTION_TYPES = 3,
)
@cenum(EVSync,
    VSync_None = 0,
    VSync_WaitRender = 1,
    VSync_NoWaitRender = 2,
)
@cenum(EVRMuraCorrectionMode,
    Default = 0,
    NoCorrection = 1,
)
@cenum(Imu_OffScaleFlags,
    Imu_OffScaleFlags_OffScale_AccelX = 1,
    Imu_OffScaleFlags_OffScale_AccelY = 2,
    Imu_OffScaleFlags_OffScale_AccelZ = 4,
    Imu_OffScaleFlags_OffScale_GyroX = 8,
    Imu_OffScaleFlags_OffScale_GyroY = 16,
    Imu_OffScaleFlags_OffScale_GyroZ = 32,
)
@cenum(EVRApplicationError,
    VRApplicationError_None = 0,
    VRApplicationError_AppKeyAlreadyExists = 100,
    VRApplicationError_NoManifest = 101,
    VRApplicationError_NoApplication = 102,
    VRApplicationError_InvalidIndex = 103,
    VRApplicationError_UnknownApplication = 104,
    VRApplicationError_IPCFailed = 105,
    VRApplicationError_ApplicationAlreadyRunning = 106,
    VRApplicationError_InvalidManifest = 107,
    VRApplicationError_InvalidApplication = 108,
    VRApplicationError_LaunchFailed = 109,
    VRApplicationError_ApplicationAlreadyStarting = 110,
    VRApplicationError_LaunchInProgress = 111,
    VRApplicationError_OldApplicationQuitting = 112,
    VRApplicationError_TransitionAborted = 113,
    VRApplicationError_IsTemplate = 114,
    VRApplicationError_SteamVRIsExiting = 115,
    VRApplicationError_BufferTooSmall = 200,
    VRApplicationError_PropertyNotSet = 201,
    VRApplicationError_UnknownProperty = 202,
    VRApplicationError_InvalidParameter = 203,
)
@cenum(EVRApplicationProperty,
    VRApplicationProperty_Name_String = 0,
    VRApplicationProperty_LaunchType_String = 11,
    VRApplicationProperty_WorkingDirectory_String = 12,
    VRApplicationProperty_BinaryPath_String = 13,
    VRApplicationProperty_Arguments_String = 14,
    VRApplicationProperty_URL_String = 15,
    VRApplicationProperty_Description_String = 50,
    VRApplicationProperty_NewsURL_String = 51,
    VRApplicationProperty_ImagePath_String = 52,
    VRApplicationProperty_Source_String = 53,
    VRApplicationProperty_ActionManifestURL_String = 54,
    VRApplicationProperty_IsDashboardOverlay_Bool = 60,
    VRApplicationProperty_IsTemplate_Bool = 61,
    VRApplicationProperty_IsInstanced_Bool = 62,
    VRApplicationProperty_IsInternal_Bool = 63,
    VRApplicationProperty_WantsCompositorPauseInStandby_Bool = 64,
    VRApplicationProperty_LastLaunchTime_Uint64 = 70,
)
@cenum(EVRApplicationTransitionState,
    VRApplicationTransition_None = 0,
    VRApplicationTransition_OldAppQuitSent = 10,
    VRApplicationTransition_WaitingForExternalLaunch = 11,
    VRApplicationTransition_NewAppLaunched = 20,
)
@cenum(ChaperoneCalibrationState,
    ChaperoneCalibrationState_OK = 1,
    ChaperoneCalibrationState_Warning = 100,
    ChaperoneCalibrationState_Warning_BaseStationMayHaveMoved = 101,
    ChaperoneCalibrationState_Warning_BaseStationRemoved = 102,
    ChaperoneCalibrationState_Warning_SeatedBoundsInvalid = 103,
    ChaperoneCalibrationState_Error = 200,
    ChaperoneCalibrationState_Error_BaseStationUninitialized = 201,
    ChaperoneCalibrationState_Error_BaseStationConflict = 202,
    ChaperoneCalibrationState_Error_PlayAreaInvalid = 203,
    ChaperoneCalibrationState_Error_CollisionBoundsInvalid = 204,
)
@cenum(EChaperoneConfigFile,
    Live = 1,
    Temp = 2,
)
@cenum(EChaperoneImportFlags,
    EChaperoneImport_BoundsOnly = 1,
)
@cenum(EVRCompositorError,
    VRCompositorError_None = 0,
    VRCompositorError_RequestFailed = 1,
    VRCompositorError_IncompatibleVersion = 100,
    VRCompositorError_DoNotHaveFocus = 101,
    VRCompositorError_InvalidTexture = 102,
    VRCompositorError_IsNotSceneApplication = 103,
    VRCompositorError_TextureIsOnWrongDevice = 104,
    VRCompositorError_TextureUsesUnsupportedFormat = 105,
    VRCompositorError_SharedTexturesNotSupported = 106,
    VRCompositorError_IndexOutOfRange = 107,
    VRCompositorError_AlreadySubmitted = 108,
    VRCompositorError_InvalidBounds = 109,
)
@cenum(EVRCompositorTimingMode,
    VRCompositorTimingMode_Implicit = 0,
    VRCompositorTimingMode_Explicit_RuntimePerformsPostPresentHandoff = 1,
    VRCompositorTimingMode_Explicit_ApplicationPerformsPostPresentHandoff = 2,
)
@cenum(VROverlayInputMethod,
    VROverlayInputMethod_None = 0,
    VROverlayInputMethod_Mouse = 1,
    VROverlayInputMethod_DualAnalog = 2,
)
@cenum(VROverlayTransformType,
    VROverlayTransformType_VROverlayTransform_Absolute = 0,
    VROverlayTransformType_VROverlayTransform_TrackedDeviceRelative = 1,
    VROverlayTransformType_VROverlayTransform_SystemOverlay = 2,
    VROverlayTransformType_VROverlayTransform_TrackedComponent = 3,
)
@cenum(VROverlayFlags,
    VROverlayFlags_None = 0,
    VROverlayFlags_Curved = 1,
    VROverlayFlags_RGSS4X = 2,
    VROverlayFlags_NoDashboardTab = 3,
    VROverlayFlags_AcceptsGamepadEvents = 4,
    VROverlayFlags_ShowGamepadFocus = 5,
    VROverlayFlags_SendVRDiscreteScrollEvents = 6,
    VROverlayFlags_SendVRTouchpadEvents = 7,
    VROverlayFlags_ShowTouchPadScrollWheel = 8,
    VROverlayFlags_TransferOwnershipToInternalProcess = 9,
    VROverlayFlags_SideBySide_Parallel = 10,
    VROverlayFlags_SideBySide_Crossed = 11,
    VROverlayFlags_Panorama = 12,
    VROverlayFlags_StereoPanorama = 13,
    VROverlayFlags_SortWithNonSceneOverlays = 14,
    VROverlayFlags_VisibleInDashboard = 15,
    VROverlayFlags_MakeOverlaysInteractiveIfVisible = 16,
    VROverlayFlags_SendVRSmoothScrollEvents = 17,
)
@cenum(VRMessageOverlayResponse,
    VRMessageOverlayResponse_ButtonPress_0 = 0,
    VRMessageOverlayResponse_ButtonPress_1 = 1,
    VRMessageOverlayResponse_ButtonPress_2 = 2,
    VRMessageOverlayResponse_ButtonPress_3 = 3,
    VRMessageOverlayResponse_CouldntFindSystemOverlay = 4,
    VRMessageOverlayResponse_CouldntFindOrCreateClientOverlay = 5,
    VRMessageOverlayResponse_ApplicationQuit = 6,
)
@cenum(EGamepadTextInputMode,
    k_EGamepadTextInputModeNormal = 0,
    k_EGamepadTextInputModePassword = 1,
    k_EGamepadTextInputModeSubmit = 2,
)
@cenum(EGamepadTextInputLineMode,
    k_EGamepadTextInputLineModeSingleLine = 0,
    k_EGamepadTextInputLineModeMultipleLines = 1,
)
@cenum(EOverlayDirection,
    OverlayDirection_Up = 0,
    OverlayDirection_Down = 1,
    OverlayDirection_Left = 2,
    OverlayDirection_Right = 3,
    OverlayDirection_Count = 4,
)
@cenum(EVROverlayIntersectionMaskPrimitiveType,
    OverlayIntersectionPrimitiveType_Rectangle = 0,
    OverlayIntersectionPrimitiveType_Circle = 1,
)
@cenum(EVRRenderModelError,
    VRRenderModelError_None = 0,
    VRRenderModelError_Loading = 100,
    VRRenderModelError_NotSupported = 200,
    VRRenderModelError_InvalidArg = 300,
    VRRenderModelError_InvalidModel = 301,
    VRRenderModelError_NoShapes = 302,
    VRRenderModelError_MultipleShapes = 303,
    VRRenderModelError_TooManyVertices = 304,
    VRRenderModelError_MultipleTextures = 305,
    VRRenderModelError_BufferTooSmall = 306,
    VRRenderModelError_NotEnoughNormals = 307,
    VRRenderModelError_NotEnoughTexCoords = 308,
    VRRenderModelError_InvalidTexture = 400,
)
@cenum(EVRComponentProperty,
    VRComponentProperty_IsStatic = 1,
    VRComponentProperty_IsVisible = 2,
    VRComponentProperty_IsTouched = 4,
    VRComponentProperty_IsPressed = 8,
    VRComponentProperty_IsScrolled = 16,
)
@cenum(EVRNotificationType,
    Transient = 0,
    Persistent = 1,
    Transient_SystemWithUserValue = 2,
)
@cenum(EVRNotificationStyle,
    None = 0,
    Application = 100,
    Contact_Disabled = 200,
    Contact_Enabled = 201,
    Contact_Active = 202,
)
@cenum(EVRSettingsError,
    VRSettingsError_None = 0,
    VRSettingsError_IPCFailed = 1,
    VRSettingsError_WriteFailed = 2,
    VRSettingsError_ReadFailed = 3,
    VRSettingsError_JsonParseFailed = 4,
    VRSettingsError_UnsetSettingHasNoDefault = 5,
)
@cenum(EVRScreenshotError,
    VRScreenshotError_None = 0,
    VRScreenshotError_RequestFailed = 1,
    VRScreenshotError_IncompatibleVersion = 100,
    VRScreenshotError_NotFound = 101,
    VRScreenshotError_BufferTooSmall = 102,
    VRScreenshotError_ScreenshotAlreadyInProgress = 108,
)
@cenum(EVRSkeletalTransformSpace,
    VRSkeletalTransformSpace_Model = 0,
    VRSkeletalTransformSpace_Parent = 1,
)
@cenum(EVRSkeletalReferencePose,
    VRSkeletalReferencePose_BindPose = 0,
    VRSkeletalReferencePose_OpenHand = 1,
    VRSkeletalReferencePose_Fist = 2,
    VRSkeletalReferencePose_GripLimit = 3,
)
@cenum(EVRFinger,
    VRFinger_Thumb = 0,
    VRFinger_Index = 1,
    VRFinger_Middle = 2,
    VRFinger_Ring = 3,
    VRFinger_Pinky = 4,
    VRFinger_Count = 5,
)
@cenum(EVRFingerSplay,
    VRFingerSplay_Thumb_Index = 0,
    VRFingerSplay_Index_Middle = 1,
    VRFingerSplay_Middle_Ring = 2,
    VRFingerSplay_Ring_Pinky = 3,
    VRFingerSplay_Count = 4,
)
@cenum(EVRInputFilterCancelType,
    VRInputFilterCancel_Timers = 0,
    VRInputFilterCancel_Momentum = 1,
)
@cenum(EVRInputStringBits{Int32},
    VRInputString_Hand = 1,
    VRInputString_ControllerType = 2,
    VRInputString_InputSource = 4,
    VRInputString_All = -1,
)
@cenum(EIOBufferError,
    IOBuffer_Success = 0,
    IOBuffer_OperationFailed = 100,
    IOBuffer_InvalidHandle = 101,
    IOBuffer_InvalidArgument = 102,
    IOBuffer_PathExists = 103,
    IOBuffer_PathDoesNotExist = 104,
    IOBuffer_Permission = 105,
)
@cenum(EIOBufferMode,
    IOBufferMode_Read = 1,
    IOBufferMode_Write = 2,
    IOBufferMode_Create = 512,
)

const TrackedDeviceIndex_t = UInt32
const VRNotificationId = UInt32
const VROverlayHandle_t = UInt64
const SpatialAnchorHandle_t = UInt32
const glSharedTextureHandle_t = Ptr{Cvoid}
const glInt_t = Int32
const glUInt_t = UInt32
const SharedTextureHandle_t = UInt64
const DriverId_t = UInt32
const WebConsoleHandle_t = UInt64
const DriverHandle_t = PropertyContainerHandle_t
const BoneIndex_t = Int32
const TrackedCameraHandle_t = UInt64
const ScreenshotHandle_t = UInt32
const VRComponentProperties = UInt32
const TextureID_t = Int32
const IOBufferHandle_t = UInt64
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

struct HmdMatrix34_t
    m :: SArray{Tuple{4,3},Cfloat,2,3*4} # NOTE: C is row-major, Julia is column-major
end

struct HmdMatrix33_t
    m :: SArray{Tuple{3,3},Cfloat,2,3*3} # NOTE: C is row-major, Julia is column-major
end

struct HmdMatrix44_t
    m :: SArray{Tuple{4,4},Cfloat,2,4*4} # NOTE: C is row-major, Julia is column-major
end

struct HmdVector3_t
    v :: SArray{Tuple{3},Cfloat,1,3}
end

struct HmdVector4_t
    v :: SArray{Tuple{4},Cfloat,1,4}
end

struct HmdVector3d_t
    v :: SArray{Tuple{3},Cdouble,1,3}
end

struct HmdVector2_t
    v :: SArray{Tuple{2},Cfloat,1,2}
end

struct HmdQuaternion_t
    w::Cdouble
    x::Cdouble
    y::Cdouble
    z::Cdouble
end

struct HmdQuaternionf_t
    w::Cfloat
    x::Cfloat
    y::Cfloat
    z::Cfloat
end

struct HmdColor_t
    r::Cfloat
    g::Cfloat
    b::Cfloat
    a::Cfloat
end

struct HmdQuad_t
    vCorners::NTuple{4, HmdVector3_t}
end

struct HmdRect2_t
    vTopLeft::HmdVector2_t
    vBottomRight::HmdVector2_t
end

struct DistortionCoordinates_t
    rfRed::NTuple{2, Cfloat}
    rfGreen::NTuple{2, Cfloat}
    rfBlue::NTuple{2, Cfloat}
end

struct Texture_t
    handle::Ptr{Cvoid}
    eType::ETextureType
    eColorSpace::EColorSpace
end

struct TrackedDevicePose_t
    mDeviceToAbsoluteTracking::HmdMatrix34_t
    vVelocity::HmdVector3_t
    vAngularVelocity::HmdVector3_t
    eTrackingResult::ETrackingResult
    bPoseIsValid::bool
    bDeviceIsConnected::bool
end

struct VRTextureBounds_t
    uMin::Cfloat
    vMin::Cfloat
    uMax::Cfloat
    vMax::Cfloat
end

struct VRTextureWithPose_t
    mDeviceToAbsoluteTracking::HmdMatrix34_t
end

struct VRTextureDepthInfo_t
    handle::Ptr{Cvoid}
    mProjection::HmdMatrix44_t
    vRange::HmdVector2_t
end

struct VRTextureWithDepth_t
    depth::VRTextureDepthInfo_t
end

struct VRTextureWithPoseAndDepth_t
    depth::VRTextureDepthInfo_t
end

struct VRVulkanTextureData_t
    m_nImage::UInt64
    m_pDevice::Ptr{VkDevice_T}
    m_pPhysicalDevice::Ptr{VkPhysicalDevice_T}
    m_pInstance::Ptr{VkInstance_T}
    m_pQueue::Ptr{VkQueue_T}
    m_nQueueFamilyIndex::UInt32
    m_nWidth::UInt32
    m_nHeight::UInt32
    m_nFormat::UInt32
    m_nSampleCount::UInt32
end

struct D3D12TextureData_t
    m_pResource::Ptr{ID3D12Resource}
    m_pCommandQueue::Ptr{ID3D12CommandQueue}
    m_nNodeMask::UInt32
end

struct VREvent_Controller_t
    button::UInt32
end

struct VREvent_Mouse_t
    x::Cfloat
    y::Cfloat
    button::UInt32
end

struct VREvent_Scroll_t
    xdelta::Cfloat
    ydelta::Cfloat
    repeatCount::UInt32
end

struct VREvent_TouchPadMove_t
    bFingerDown::bool
    flSecondsFingerDown::Cfloat
    fValueXFirst::Cfloat
    fValueYFirst::Cfloat
    fValueXRaw::Cfloat
    fValueYRaw::Cfloat
end

struct VREvent_Notification_t
    ulUserValue::UInt64
    notificationId::UInt32
end

struct VREvent_Process_t
    pid::UInt32
    oldPid::UInt32
    bForced::bool
    bConnectionLost::bool
end

struct VREvent_Overlay_t
    overlayHandle::UInt64
    devicePath::UInt64
end

struct VREvent_Status_t
    statusState::UInt32
end

struct VREvent_Keyboard_t
    cNewInput::NTuple{8, UInt8}
    uUserValue::UInt64
end

struct VREvent_Ipd_t
    ipdMeters::Cfloat
end

struct VREvent_Chaperone_t
    m_nPreviousUniverse::UInt64
    m_nCurrentUniverse::UInt64
end

# struct VREvent_Reserved_t
#     reserved0::UInt64
#     reserved1::UInt64
#     reserved2::UInt64
#     reserved3::UInt64
#     reserved4::UInt64
#     reserved5::UInt64
# end

struct VREvent_PerformanceTest_t
    m_nFidelityLevel::UInt32
end

struct VREvent_SeatedZeroPoseReset_t
    bResetBySystemMenu::bool
end

struct VREvent_Screenshot_t
    handle::UInt32
    type::UInt32
end

struct VREvent_ScreenshotProgress_t
    progress::Cfloat
end

struct VREvent_ApplicationLaunch_t
    pid::UInt32
    unArgsHandle::UInt32
end

struct VREvent_EditingCameraSurface_t
    overlayHandle::UInt64
    nVisualMode::UInt32
end

struct VREvent_MessageOverlay_t
    unVRMessageOverlayResponse::UInt32
end

struct VREvent_Property_t
    container::PropertyContainerHandle_t
    prop::ETrackedDeviceProperty
end

struct VREvent_DualAnalog_t
    x::Cfloat
    y::Cfloat
    transformedX::Cfloat
    transformedY::Cfloat
    which::EDualAnalogWhich
end

struct VREvent_HapticVibration_t
    containerHandle::UInt64
    componentHandle::UInt64
    fDurationSeconds::Cfloat
    fFrequency::Cfloat
    fAmplitude::Cfloat
end

struct VREvent_WebConsole_t
    webConsoleHandle::WebConsoleHandle_t
end

struct VREvent_InputBindingLoad_t
    ulAppContainer::PropertyContainerHandle_t
    pathMessage::UInt64
    pathUrl::UInt64
    pathControllerType::UInt64
end

struct VREvent_InputActionManifestLoad_t
    pathAppKey::UInt64
    pathMessage::UInt64
    pathMessageParam::UInt64
    pathManifestPath::UInt64
end

struct VREvent_SpatialAnchor_t
    unHandle::SpatialAnchorHandle_t
end

struct VREvent_ProgressUpdate_t
    ulApplicationPropertyContainer::UInt64
    pathDevice::UInt64
    pathInputSource::UInt64
    pathProgressAction::UInt64
    pathIcon::UInt64
    fProgress::Cfloat
end

struct VREvent_ShowUI_t
    eType::EShowUIType
end

struct HiddenAreaMesh_t
    pVertexData::Ptr{HmdVector2_t}
    unTriangleCount::UInt32
end

struct VRControllerAxis_t
    x::Cfloat
    y::Cfloat
end

struct VRControllerState_t
    unPacketNum::UInt32
    ulButtonPressed::UInt64
    ulButtonTouched::UInt64
    rAxis::NTuple{5, VRControllerAxis_t}
end

struct Compositor_OverlaySettings
    size::UInt32
    curved::bool
    antialias::bool
    scale::Cfloat
    distance::Cfloat
    alpha::Cfloat
    uOffset::Cfloat
    vOffset::Cfloat
    uScale::Cfloat
    vScale::Cfloat
    gridDivs::Cfloat
    gridWidth::Cfloat
    gridScale::Cfloat
    transform::HmdMatrix44_t
end

struct VRBoneTransform_t
    position::HmdVector4_t
    orientation::HmdQuaternionf_t
end

struct CameraVideoStreamFrameHeader_t
    eFrameType::EVRTrackedCameraFrameType
    nWidth::UInt32
    nHeight::UInt32
    nBytesPerPixel::UInt32
    nFrameSequence::UInt32
    standingTrackedDevicePose::TrackedDevicePose_t
    ulFrameExposureTime::UInt64
end

struct DriverDirectMode_FrameTiming
    m_nSize::UInt32
    m_nNumFramePresents::UInt32
    m_nNumMisPresented::UInt32
    m_nNumDroppedFrames::UInt32
    m_nReprojectionFlags::UInt32
end

struct ImuSample_t
    fSampleTime::Cdouble
    vAccel::HmdVector3d_t
    vGyro::HmdVector3d_t
    unOffScaleFlags::UInt32
end

struct AppOverrideKeys_t
    pchKey::Cstring
    pchValue::Cstring
end

struct Compositor_FrameTiming
    m_nSize::UInt32
    m_nFrameIndex::UInt32
    m_nNumFramePresents::UInt32
    m_nNumMisPresented::UInt32
    m_nNumDroppedFrames::UInt32
    m_nReprojectionFlags::UInt32
    m_flSystemTimeInSeconds::Cdouble
    m_flPreSubmitGpuMs::Cfloat
    m_flPostSubmitGpuMs::Cfloat
    m_flTotalRenderGpuMs::Cfloat
    m_flCompositorRenderGpuMs::Cfloat
    m_flCompositorRenderCpuMs::Cfloat
    m_flCompositorIdleCpuMs::Cfloat
    m_flClientFrameIntervalMs::Cfloat
    m_flPresentCallCpuMs::Cfloat
    m_flWaitForPresentCpuMs::Cfloat
    m_flSubmitFrameMs::Cfloat
    m_flWaitGetPosesCalledMs::Cfloat
    m_flNewPosesReadyMs::Cfloat
    m_flNewFrameReadyMs::Cfloat
    m_flCompositorUpdateStartMs::Cfloat
    m_flCompositorUpdateEndMs::Cfloat
    m_flCompositorRenderStartMs::Cfloat
    m_HmdPose::TrackedDevicePose_t
    m_nNumVSyncsReadyForUse::UInt32
    m_nNumVSyncsToFirstView::UInt32
end

struct Compositor_CumulativeStats
    m_nPid::UInt32
    m_nNumFramePresents::UInt32
    m_nNumDroppedFrames::UInt32
    m_nNumReprojectedFrames::UInt32
    m_nNumFramePresentsOnStartup::UInt32
    m_nNumDroppedFramesOnStartup::UInt32
    m_nNumReprojectedFramesOnStartup::UInt32
    m_nNumLoading::UInt32
    m_nNumFramePresentsLoading::UInt32
    m_nNumDroppedFramesLoading::UInt32
    m_nNumReprojectedFramesLoading::UInt32
    m_nNumTimedOut::UInt32
    m_nNumFramePresentsTimedOut::UInt32
    m_nNumDroppedFramesTimedOut::UInt32
    m_nNumReprojectedFramesTimedOut::UInt32
end

struct VROverlayIntersectionParams_t
    vSource::HmdVector3_t
    vDirection::HmdVector3_t
    eOrigin::ETrackingUniverseOrigin
end

struct VROverlayIntersectionResults_t
    vPoint::HmdVector3_t
    vNormal::HmdVector3_t
    vUVs::HmdVector2_t
    fDistance::Cfloat
end

struct IntersectionMaskRectangle_t
    m_flTopLeftX::Cfloat
    m_flTopLeftY::Cfloat
    m_flWidth::Cfloat
    m_flHeight::Cfloat
end

struct IntersectionMaskCircle_t
    m_flCenterX::Cfloat
    m_flCenterY::Cfloat
    m_flRadius::Cfloat
end

struct RenderModel_ComponentState_t
    mTrackingToComponentRenderModel::HmdMatrix34_t
    mTrackingToComponentLocal::HmdMatrix34_t
    uProperties::VRComponentProperties
end

struct RenderModel_Vertex_t
    vPosition::HmdVector3_t
    vNormal::HmdVector3_t
    rfTextureCoord::NTuple{2, Cfloat}
end

struct RenderModel_ControllerMode_State_t
    bScrollWheelVisible::bool
end

struct NotificationBitmap_t
    m_pImageData::Ptr{Cvoid}
    m_nWidth::Int32
    m_nHeight::Int32
    m_nBytesPerPixel::Int32
end

struct CVRSettingHelper
    m_pSettings::intptr_t
end

struct InputAnalogActionData_t
    bActive::bool
    activeOrigin::VRInputValueHandle_t
    x::Cfloat
    y::Cfloat
    z::Cfloat
    deltaX::Cfloat
    deltaY::Cfloat
    deltaZ::Cfloat
    fUpdateTime::Cfloat
end

struct InputDigitalActionData_t
    bActive::bool
    activeOrigin::VRInputValueHandle_t
    bState::bool
    bChanged::bool
    fUpdateTime::Cfloat
end

struct InputPoseActionData_t
    bActive::bool
    activeOrigin::VRInputValueHandle_t
    pose::TrackedDevicePose_t
end

struct InputSkeletalActionData_t
    bActive::bool
    activeOrigin::VRInputValueHandle_t
end

struct InputOriginInfo_t
    devicePath::VRInputValueHandle_t
    trackedDeviceIndex::TrackedDeviceIndex_t
    rchRenderModelComponentName::NTuple{128, UInt8}
end

struct VRActiveActionSet_t
    ulActionSet::VRActionSetHandle_t
    ulRestrictedToDevice::VRInputValueHandle_t
    ulSecondaryActionSet::VRActionSetHandle_t
    unPadding::UInt32
    nPriority::Int32
end

struct VRSkeletalSummaryData_t
    flFingerCurl::NTuple{5, Cfloat}
    flFingerSplay::NTuple{4, Cfloat}
end

struct SpatialAnchorPose_t
    mAnchorToAbsoluteTracking::HmdMatrix34_t
end

struct COpenVRContext
    m_pVRSystem::intptr_t
    m_pVRChaperone::intptr_t
    m_pVRChaperoneSetup::intptr_t
    m_pVRCompositor::intptr_t
    m_pVROverlay::intptr_t
    m_pVRResources::intptr_t
    m_pVRRenderModels::intptr_t
    m_pVRExtendedDisplay::intptr_t
    m_pVRSettings::intptr_t
    m_pVRApplications::intptr_t
    m_pVRTrackedCamera::intptr_t
    m_pVRScreenshots::intptr_t
    m_pVRDriverManager::intptr_t
    m_pVRInput::intptr_t
    m_pVRIOBuffer::intptr_t
    m_pVRSpatialAnchors::intptr_t
    m_pVRNotifications::intptr_t
end

# struct VREvent_Data_t
#     reserved::VREvent_Reserved_t
# end

# struct VROverlayIntersectionMaskPrimitive_Data_t
#     m_Rectangle::IntersectionMaskRectangle_t
# end

# struct VROverlayIntersectionMaskPrimitive_t
#     m_nPrimitiveType::EVROverlayIntersectionMaskPrimitiveType
#     m_Primitive::VROverlayIntersectionMaskPrimitive_Data_t
# end

struct VR_IVRSystem_FnTable
    GetRecommendedRenderTargetSize::Ptr{Cvoid}
    GetProjectionMatrix::Ptr{Cvoid}
    GetProjectionRaw::Ptr{Cvoid}
    ComputeDistortion::Ptr{Cvoid}
    GetEyeToHeadTransform::Ptr{Cvoid}
    GetTimeSinceLastVsync::Ptr{Cvoid}
    GetD3D9AdapterIndex::Ptr{Cvoid}
    GetDXGIOutputInfo::Ptr{Cvoid}
    GetOutputDevice::Ptr{Cvoid}
    IsDisplayOnDesktop::Ptr{Cvoid}
    SetDisplayVisibility::Ptr{Cvoid}
    GetDeviceToAbsoluteTrackingPose::Ptr{Cvoid}
    ResetSeatedZeroPose::Ptr{Cvoid}
    GetSeatedZeroPoseToStandingAbsoluteTrackingPose::Ptr{Cvoid}
    GetRawZeroPoseToStandingAbsoluteTrackingPose::Ptr{Cvoid}
    GetSortedTrackedDeviceIndicesOfClass::Ptr{Cvoid}
    GetTrackedDeviceActivityLevel::Ptr{Cvoid}
    ApplyTransform::Ptr{Cvoid}
    GetTrackedDeviceIndexForControllerRole::Ptr{Cvoid}
    GetControllerRoleForTrackedDeviceIndex::Ptr{Cvoid}
    GetTrackedDeviceClass::Ptr{Cvoid}
    IsTrackedDeviceConnected::Ptr{Cvoid}
    GetBoolTrackedDeviceProperty::Ptr{Cvoid}
    GetFloatTrackedDeviceProperty::Ptr{Cvoid}
    GetInt32TrackedDeviceProperty::Ptr{Cvoid}
    GetUint64TrackedDeviceProperty::Ptr{Cvoid}
    GetMatrix34TrackedDeviceProperty::Ptr{Cvoid}
    GetArrayTrackedDeviceProperty::Ptr{Cvoid}
    GetStringTrackedDeviceProperty::Ptr{Cvoid}
    GetPropErrorNameFromEnum::Ptr{Cvoid}
    PollNextEvent::Ptr{Cvoid}
    PollNextEventWithPose::Ptr{Cvoid}
    GetEventTypeNameFromEnum::Ptr{Cvoid}
    GetHiddenAreaMesh::Ptr{Cvoid}
    GetControllerState::Ptr{Cvoid}
    GetControllerStateWithPose::Ptr{Cvoid}
    TriggerHapticPulse::Ptr{Cvoid}
    GetButtonIdNameFromEnum::Ptr{Cvoid}
    GetControllerAxisTypeNameFromEnum::Ptr{Cvoid}
    IsInputAvailable::Ptr{Cvoid}
    IsSteamVRDrawingControllers::Ptr{Cvoid}
    ShouldApplicationPause::Ptr{Cvoid}
    ShouldApplicationReduceRenderingWork::Ptr{Cvoid}
    DriverDebugRequest::Ptr{Cvoid}
    PerformFirmwareUpdate::Ptr{Cvoid}
    AcknowledgeQuit_Exiting::Ptr{Cvoid}
    AcknowledgeQuit_UserPrompt::Ptr{Cvoid}
end

struct VR_IVRExtendedDisplay_FnTable
    GetWindowBounds::Ptr{Cvoid}
    GetEyeOutputViewport::Ptr{Cvoid}
    GetDXGIOutputInfo::Ptr{Cvoid}
end

struct VR_IVRTrackedCamera_FnTable
    GetCameraErrorNameFromEnum::Ptr{Cvoid}
    HasCamera::Ptr{Cvoid}
    GetCameraFrameSize::Ptr{Cvoid}
    GetCameraIntrinsics::Ptr{Cvoid}
    GetCameraProjection::Ptr{Cvoid}
    AcquireVideoStreamingService::Ptr{Cvoid}
    ReleaseVideoStreamingService::Ptr{Cvoid}
    GetVideoStreamFrameBuffer::Ptr{Cvoid}
    GetVideoStreamTextureSize::Ptr{Cvoid}
    GetVideoStreamTextureD3D11::Ptr{Cvoid}
    GetVideoStreamTextureGL::Ptr{Cvoid}
    ReleaseVideoStreamTextureGL::Ptr{Cvoid}
end

struct VR_IVRApplications_FnTable
    AddApplicationManifest::Ptr{Cvoid}
    RemoveApplicationManifest::Ptr{Cvoid}
    IsApplicationInstalled::Ptr{Cvoid}
    GetApplicationCount::Ptr{Cvoid}
    GetApplicationKeyByIndex::Ptr{Cvoid}
    GetApplicationKeyByProcessId::Ptr{Cvoid}
    LaunchApplication::Ptr{Cvoid}
    LaunchTemplateApplication::Ptr{Cvoid}
    LaunchApplicationFromMimeType::Ptr{Cvoid}
    LaunchDashboardOverlay::Ptr{Cvoid}
    CancelApplicationLaunch::Ptr{Cvoid}
    IdentifyApplication::Ptr{Cvoid}
    GetApplicationProcessId::Ptr{Cvoid}
    GetApplicationsErrorNameFromEnum::Ptr{Cvoid}
    GetApplicationPropertyString::Ptr{Cvoid}
    GetApplicationPropertyBool::Ptr{Cvoid}
    GetApplicationPropertyUint64::Ptr{Cvoid}
    SetApplicationAutoLaunch::Ptr{Cvoid}
    GetApplicationAutoLaunch::Ptr{Cvoid}
    SetDefaultApplicationForMimeType::Ptr{Cvoid}
    GetDefaultApplicationForMimeType::Ptr{Cvoid}
    GetApplicationSupportedMimeTypes::Ptr{Cvoid}
    GetApplicationsThatSupportMimeType::Ptr{Cvoid}
    GetApplicationLaunchArguments::Ptr{Cvoid}
    GetStartingApplication::Ptr{Cvoid}
    GetTransitionState::Ptr{Cvoid}
    PerformApplicationPrelaunchCheck::Ptr{Cvoid}
    GetApplicationsTransitionStateNameFromEnum::Ptr{Cvoid}
    IsQuitUserPromptRequested::Ptr{Cvoid}
    LaunchInternalProcess::Ptr{Cvoid}
    GetCurrentSceneProcessId::Ptr{Cvoid}
end

struct VR_IVRChaperone_FnTable
    GetCalibrationState::Ptr{Cvoid}
    GetPlayAreaSize::Ptr{Cvoid}
    GetPlayAreaRect::Ptr{Cvoid}
    ReloadInfo::Ptr{Cvoid}
    SetSceneColor::Ptr{Cvoid}
    GetBoundsColor::Ptr{Cvoid}
    AreBoundsVisible::Ptr{Cvoid}
    ForceBoundsVisible::Ptr{Cvoid}
end

struct VR_IVRChaperoneSetup_FnTable
    CommitWorkingCopy::Ptr{Cvoid}
    RevertWorkingCopy::Ptr{Cvoid}
    GetWorkingPlayAreaSize::Ptr{Cvoid}
    GetWorkingPlayAreaRect::Ptr{Cvoid}
    GetWorkingCollisionBoundsInfo::Ptr{Cvoid}
    GetLiveCollisionBoundsInfo::Ptr{Cvoid}
    GetWorkingSeatedZeroPoseToRawTrackingPose::Ptr{Cvoid}
    GetWorkingStandingZeroPoseToRawTrackingPose::Ptr{Cvoid}
    SetWorkingPlayAreaSize::Ptr{Cvoid}
    SetWorkingCollisionBoundsInfo::Ptr{Cvoid}
    SetWorkingPerimeter::Ptr{Cvoid}
    SetWorkingSeatedZeroPoseToRawTrackingPose::Ptr{Cvoid}
    SetWorkingStandingZeroPoseToRawTrackingPose::Ptr{Cvoid}
    ReloadFromDisk::Ptr{Cvoid}
    GetLiveSeatedZeroPoseToRawTrackingPose::Ptr{Cvoid}
    ExportLiveToBuffer::Ptr{Cvoid}
    ImportFromBufferToWorking::Ptr{Cvoid}
    ShowWorkingSetPreview::Ptr{Cvoid}
    HideWorkingSetPreview::Ptr{Cvoid}
end

struct VR_IVRCompositor_FnTable
    SetTrackingSpace::Ptr{Cvoid}
    GetTrackingSpace::Ptr{Cvoid}
    WaitGetPoses::Ptr{Cvoid}
    GetLastPoses::Ptr{Cvoid}
    GetLastPoseForTrackedDeviceIndex::Ptr{Cvoid}
    Submit::Ptr{Cvoid}
    ClearLastSubmittedFrame::Ptr{Cvoid}
    PostPresentHandoff::Ptr{Cvoid}
    GetFrameTiming::Ptr{Cvoid}
    GetFrameTimings::Ptr{Cvoid}
    GetFrameTimeRemaining::Ptr{Cvoid}
    GetCumulativeStats::Ptr{Cvoid}
    FadeToColor::Ptr{Cvoid}
    GetCurrentFadeColor::Ptr{Cvoid}
    FadeGrid::Ptr{Cvoid}
    GetCurrentGridAlpha::Ptr{Cvoid}
    SetSkyboxOverride::Ptr{Cvoid}
    ClearSkyboxOverride::Ptr{Cvoid}
    CompositorBringToFront::Ptr{Cvoid}
    CompositorGoToBack::Ptr{Cvoid}
    CompositorQuit::Ptr{Cvoid}
    IsFullscreen::Ptr{Cvoid}
    GetCurrentSceneFocusProcess::Ptr{Cvoid}
    GetLastFrameRenderer::Ptr{Cvoid}
    CanRenderScene::Ptr{Cvoid}
    ShowMirrorWindow::Ptr{Cvoid}
    HideMirrorWindow::Ptr{Cvoid}
    IsMirrorWindowVisible::Ptr{Cvoid}
    CompositorDumpImages::Ptr{Cvoid}
    ShouldAppRenderWithLowResources::Ptr{Cvoid}
    ForceInterleavedReprojectionOn::Ptr{Cvoid}
    ForceReconnectProcess::Ptr{Cvoid}
    SuspendRendering::Ptr{Cvoid}
    GetMirrorTextureD3D11::Ptr{Cvoid}
    ReleaseMirrorTextureD3D11::Ptr{Cvoid}
    GetMirrorTextureGL::Ptr{Cvoid}
    ReleaseSharedGLTexture::Ptr{Cvoid}
    LockGLSharedTextureForAccess::Ptr{Cvoid}
    UnlockGLSharedTextureForAccess::Ptr{Cvoid}
    GetVulkanInstanceExtensionsRequired::Ptr{Cvoid}
    GetVulkanDeviceExtensionsRequired::Ptr{Cvoid}
    SetExplicitTimingMode::Ptr{Cvoid}
    SubmitExplicitTimingData::Ptr{Cvoid}
    IsMotionSmoothingEnabled::Ptr{Cvoid}
end

struct VR_IVROverlay_FnTable
    FindOverlay::Ptr{Cvoid}
    CreateOverlay::Ptr{Cvoid}
    DestroyOverlay::Ptr{Cvoid}
    SetHighQualityOverlay::Ptr{Cvoid}
    GetHighQualityOverlay::Ptr{Cvoid}
    GetOverlayKey::Ptr{Cvoid}
    GetOverlayName::Ptr{Cvoid}
    SetOverlayName::Ptr{Cvoid}
    GetOverlayImageData::Ptr{Cvoid}
    GetOverlayErrorNameFromEnum::Ptr{Cvoid}
    SetOverlayRenderingPid::Ptr{Cvoid}
    GetOverlayRenderingPid::Ptr{Cvoid}
    SetOverlayFlag::Ptr{Cvoid}
    GetOverlayFlag::Ptr{Cvoid}
    SetOverlayColor::Ptr{Cvoid}
    GetOverlayColor::Ptr{Cvoid}
    SetOverlayAlpha::Ptr{Cvoid}
    GetOverlayAlpha::Ptr{Cvoid}
    SetOverlayTexelAspect::Ptr{Cvoid}
    GetOverlayTexelAspect::Ptr{Cvoid}
    SetOverlaySortOrder::Ptr{Cvoid}
    GetOverlaySortOrder::Ptr{Cvoid}
    SetOverlayWidthInMeters::Ptr{Cvoid}
    GetOverlayWidthInMeters::Ptr{Cvoid}
    SetOverlayAutoCurveDistanceRangeInMeters::Ptr{Cvoid}
    GetOverlayAutoCurveDistanceRangeInMeters::Ptr{Cvoid}
    SetOverlayTextureColorSpace::Ptr{Cvoid}
    GetOverlayTextureColorSpace::Ptr{Cvoid}
    SetOverlayTextureBounds::Ptr{Cvoid}
    GetOverlayTextureBounds::Ptr{Cvoid}
    GetOverlayRenderModel::Ptr{Cvoid}
    SetOverlayRenderModel::Ptr{Cvoid}
    GetOverlayTransformType::Ptr{Cvoid}
    SetOverlayTransformAbsolute::Ptr{Cvoid}
    GetOverlayTransformAbsolute::Ptr{Cvoid}
    SetOverlayTransformTrackedDeviceRelative::Ptr{Cvoid}
    GetOverlayTransformTrackedDeviceRelative::Ptr{Cvoid}
    SetOverlayTransformTrackedDeviceComponent::Ptr{Cvoid}
    GetOverlayTransformTrackedDeviceComponent::Ptr{Cvoid}
    GetOverlayTransformOverlayRelative::Ptr{Cvoid}
    SetOverlayTransformOverlayRelative::Ptr{Cvoid}
    ShowOverlay::Ptr{Cvoid}
    HideOverlay::Ptr{Cvoid}
    IsOverlayVisible::Ptr{Cvoid}
    GetTransformForOverlayCoordinates::Ptr{Cvoid}
    PollNextOverlayEvent::Ptr{Cvoid}
    GetOverlayInputMethod::Ptr{Cvoid}
    SetOverlayInputMethod::Ptr{Cvoid}
    GetOverlayMouseScale::Ptr{Cvoid}
    SetOverlayMouseScale::Ptr{Cvoid}
    ComputeOverlayIntersection::Ptr{Cvoid}
    IsHoverTargetOverlay::Ptr{Cvoid}
    GetGamepadFocusOverlay::Ptr{Cvoid}
    SetGamepadFocusOverlay::Ptr{Cvoid}
    SetOverlayNeighbor::Ptr{Cvoid}
    MoveGamepadFocusToNeighbor::Ptr{Cvoid}
    SetOverlayDualAnalogTransform::Ptr{Cvoid}
    GetOverlayDualAnalogTransform::Ptr{Cvoid}
    SetOverlayTexture::Ptr{Cvoid}
    ClearOverlayTexture::Ptr{Cvoid}
    SetOverlayRaw::Ptr{Cvoid}
    SetOverlayFromFile::Ptr{Cvoid}
    GetOverlayTexture::Ptr{Cvoid}
    ReleaseNativeOverlayHandle::Ptr{Cvoid}
    GetOverlayTextureSize::Ptr{Cvoid}
    CreateDashboardOverlay::Ptr{Cvoid}
    IsDashboardVisible::Ptr{Cvoid}
    IsActiveDashboardOverlay::Ptr{Cvoid}
    SetDashboardOverlaySceneProcess::Ptr{Cvoid}
    GetDashboardOverlaySceneProcess::Ptr{Cvoid}
    ShowDashboard::Ptr{Cvoid}
    GetPrimaryDashboardDevice::Ptr{Cvoid}
    ShowKeyboard::Ptr{Cvoid}
    ShowKeyboardForOverlay::Ptr{Cvoid}
    GetKeyboardText::Ptr{Cvoid}
    HideKeyboard::Ptr{Cvoid}
    SetKeyboardTransformAbsolute::Ptr{Cvoid}
    SetKeyboardPositionForOverlay::Ptr{Cvoid}
    SetOverlayIntersectionMask::Ptr{Cvoid}
    GetOverlayFlags::Ptr{Cvoid}
    ShowMessageOverlay::Ptr{Cvoid}
    CloseMessageOverlay::Ptr{Cvoid}
end

struct VR_IVRRenderModels_FnTable
    LoadRenderModel_Async::Ptr{Cvoid}
    FreeRenderModel::Ptr{Cvoid}
    LoadTexture_Async::Ptr{Cvoid}
    FreeTexture::Ptr{Cvoid}
    LoadTextureD3D11_Async::Ptr{Cvoid}
    LoadIntoTextureD3D11_Async::Ptr{Cvoid}
    FreeTextureD3D11::Ptr{Cvoid}
    GetRenderModelName::Ptr{Cvoid}
    GetRenderModelCount::Ptr{Cvoid}
    GetComponentCount::Ptr{Cvoid}
    GetComponentName::Ptr{Cvoid}
    GetComponentButtonMask::Ptr{Cvoid}
    GetComponentRenderModelName::Ptr{Cvoid}
    GetComponentStateForDevicePath::Ptr{Cvoid}
    GetComponentState::Ptr{Cvoid}
    RenderModelHasComponent::Ptr{Cvoid}
    GetRenderModelThumbnailURL::Ptr{Cvoid}
    GetRenderModelOriginalPath::Ptr{Cvoid}
    GetRenderModelErrorNameFromEnum::Ptr{Cvoid}
end

struct VR_IVRNotifications_FnTable
    CreateNotification::Ptr{Cvoid}
    RemoveNotification::Ptr{Cvoid}
end

struct VR_IVRSettings_FnTable
    GetSettingsErrorNameFromEnum::Ptr{Cvoid}
    Sync::Ptr{Cvoid}
    SetBool::Ptr{Cvoid}
    SetInt32::Ptr{Cvoid}
    SetFloat::Ptr{Cvoid}
    SetString::Ptr{Cvoid}
    GetBool::Ptr{Cvoid}
    GetInt32::Ptr{Cvoid}
    GetFloat::Ptr{Cvoid}
    GetString::Ptr{Cvoid}
    RemoveSection::Ptr{Cvoid}
    RemoveKeyInSection::Ptr{Cvoid}
end

struct VR_IVRScreenshots_FnTable
    RequestScreenshot::Ptr{Cvoid}
    HookScreenshot::Ptr{Cvoid}
    GetScreenshotPropertyType::Ptr{Cvoid}
    GetScreenshotPropertyFilename::Ptr{Cvoid}
    UpdateScreenshotProgress::Ptr{Cvoid}
    TakeStereoScreenshot::Ptr{Cvoid}
    SubmitScreenshot::Ptr{Cvoid}
end

struct VR_IVRResources_FnTable
    LoadSharedResource::Ptr{Cvoid}
    GetResourceFullPath::Ptr{Cvoid}
end

struct VR_IVRDriverManager_FnTable
    GetDriverCount::Ptr{Cvoid}
    GetDriverName::Ptr{Cvoid}
    GetDriverHandle::Ptr{Cvoid}
end

struct VR_IVRInput_FnTable
    SetActionManifestPath::Ptr{Cvoid}
    GetActionSetHandle::Ptr{Cvoid}
    GetActionHandle::Ptr{Cvoid}
    GetInputSourceHandle::Ptr{Cvoid}
    UpdateActionState::Ptr{Cvoid}
    GetDigitalActionData::Ptr{Cvoid}
    GetAnalogActionData::Ptr{Cvoid}
    GetPoseActionData::Ptr{Cvoid}
    GetSkeletalActionData::Ptr{Cvoid}
    GetBoneCount::Ptr{Cvoid}
    GetBoneHierarchy::Ptr{Cvoid}
    GetBoneName::Ptr{Cvoid}
    GetSkeletalReferenceTransforms::Ptr{Cvoid}
    GetSkeletalTrackingLevel::Ptr{Cvoid}
    GetSkeletalBoneData::Ptr{Cvoid}
    GetSkeletalSummaryData::Ptr{Cvoid}
    GetSkeletalBoneDataCompressed::Ptr{Cvoid}
    DecompressSkeletalBoneData::Ptr{Cvoid}
    TriggerHapticVibrationAction::Ptr{Cvoid}
    GetActionOrigins::Ptr{Cvoid}
    GetOriginLocalizedName::Ptr{Cvoid}
    GetOriginTrackedDeviceInfo::Ptr{Cvoid}
    ShowActionOrigins::Ptr{Cvoid}
    ShowBindingsForActionSet::Ptr{Cvoid}
end

struct VR_IVRIOBuffer_FnTable
    Open::Ptr{Cvoid}
    Close::Ptr{Cvoid}
    Read::Ptr{Cvoid}
    Write::Ptr{Cvoid}
    PropertyContainer::Ptr{Cvoid}
    HasReaders::Ptr{Cvoid}
end

struct VR_IVRSpatialAnchors_FnTable
    CreateSpatialAnchorFromDescriptor::Ptr{Cvoid}
    CreateSpatialAnchorFromPose::Ptr{Cvoid}
    GetSpatialAnchorPose::Ptr{Cvoid}
    GetSpatialAnchorDescriptor::Ptr{Cvoid}
end

const IVRSystem = Cvoid
const IVRExtendedDisplay = Cvoid
const IVRTrackedCamera = Cvoid
const IVRApplications = Cvoid
const IVRChaperone = Cvoid
const IVRChaperoneSetup = Cvoid
const IVRCompositor = Cvoid
const IVROverlay = Cvoid
const IVRRenderModels = Cvoid
const IVRNotifications = Cvoid
const IVRSettings = Cvoid
const IVRScreenshots = Cvoid
const IVRResources = Cvoid
const IVRDriverManager = Cvoid
const IVRInput = Cvoid
const IVRIOBuffer = Cvoid
const IVRSpatialAnchors = Cvoid

## these were the more critical ones: unions and misaligned structs

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

# const VROverlayIntersectionMaskPrimitive_Data_t = Union{VROverlayIntersectionMaskPrimitive_Data_t':'VROverlayIntersectionMaskPrimitive_Data_t} # NOTE: C unions are not supported in Julia
struct VROverlayIntersectionMaskPrimitive_Data_t
  data :: NTuple{Int64(VROverlayIntersectionMaskPrimitive_Data_tLen),UInt8}
end
struct VROverlayIntersectionMaskPrimitive_t
  m_nPrimitiveType :: EVROverlayIntersectionMaskPrimitiveType
  m_Primitive :: VROverlayIntersectionMaskPrimitive_Data_t
end

struct RenderModel_TextureMap_t
  unWidth :: UInt16
  unHeight :: UInt16
  rubTextureMapData1 :: UInt32 # Ptr{UInt8}
  rubTextureMapData2 :: UInt32 # Ptr{UInt8}
end

struct RenderModel_t
  rVertexData :: Ptr{RenderModel_Vertex_t} # const RenderModel_Vertex_t *rVertexData; // Vertex data for the mesh
  unVertexCount :: UInt32                  # uint32_t unVertexCount;                  // Number of vertices in the vertex data
  rIndexData1 :: UInt32 # Ptr{…}
  rIndexData2 :: UInt32 # Ptr{…}                # const uint16_t *rIndexData;              // Indices into the vertex data for each triangle
  unTriangleCount :: UInt32                # uint32_t unTriangleCount;                // Number of triangles in the mesh. Index count is 3 * TriangleCount
  diffuseTextureId :: TextureID_t          # TextureID_t diffuseTextureId;
end
