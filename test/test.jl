using OpenVR

eError = Ref{ETrackedPropertyError}()
ivrsystem = VR_Init(eError, OpenVR.VRApplication_Scene, C_NULL)

if ivrsystem != C_NULL

eError = Ref{OpenVR.ETrackedPropertyError}()
bufsize = UInt32(1024)
buf = zeros(UInt8,bufsize)
len = OpenVR.GetStringTrackedDeviceProperty(ivrsystem,OpenVR.k_unTrackedDeviceIndex_Hmd,OpenVR.Prop_TrackingSystemName_String,pointer(buf),bufsize,pointer_from_objref(eError))
trackingsystemname = unsafe_string(pointer(buf),len-1)


end
