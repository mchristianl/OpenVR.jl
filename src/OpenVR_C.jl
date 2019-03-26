module OpenVR_C
  using CEnum
  const openvr_version = "1.2.10"
  const openvr_dirname = "openvr-$openvr_version"
  const os_dir_and_so_ext = begin
    local os_dirname = "unknown"
    local os_so_extension = ""
    Sys.islinux()   &&                        (os_dirname = "linux64"; os_so_extension=".so")
    Sys.isapple()   &&                        (os_dirname = "osx32"  ; os_so_extension=".dylib")
    Sys.iswindows() && Sys.ARCH == :x86_32 && (os_dirname = "win32"  ; os_so_extension=".dll")
    Sys.iswindows() && Sys.ARCH == :x86_64 && (os_dirname = "win64"  ; os_so_extension=".dll")
    (os_dirname, os_so_extension)
  end
  const libopenvr = joinpath(dirname(@__DIR__),"deps",openvr_dirname,"lib",os_dir_and_so_ext[1],"libopenvr_api$(os_dir_and_so_ext[2])")

  const VREvent_Data_tLen                            = 0x0000000000000030 # C-Unions
  const VROverlayIntersectionMaskPrimitive_Data_tLen = 0x0000000000000010 # C-Unions

  using StaticArrays

  include(joinpath((@__DIR__), "libopenvr_common.jl"))
  include(joinpath((@__DIR__), "libopenvr_api.jl"))

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
end
