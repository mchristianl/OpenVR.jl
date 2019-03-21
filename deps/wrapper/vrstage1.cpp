
#include <openvr.h>
#include <jlcxx/jlcxx.hpp>

namespace jlcxx
{
	// clang-query -c="set output print" -c="match enumDecl(isExpansionInMainFile())" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | grep -Ev "^Binding for.*$|^$|^Match #.*:$" | sed -ne "s/^enum \(.*\) {/template<> struct IsBits<vr::\1> : std::true_type {};/p" > vrenumsisbits.cpp
	#include "vrenumsisbits.cpp"

	// // ./headers/openvr.h:130
  // template<> struct IsBits<vr::ETextureType> : std::true_type {};
	// // ./headers/openvr.h:145
	// template<> struct IsBits<vr::EColorSpace> : std::true_type {};
}

JLCXX_MODULE define_julia_module(jlcxx::Module& mod)
{
	// clang-query -c="set output print" -c="match enumDecl(isExpansionInMainFile())" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | grep -Ev "^Binding for.*$|^$|^Match #.*:$" | sed -ne "s/^enum \(.*\) {/mod.add_bits<vr::\1>(\"\1\");/p" > vrenums.cpp
  #include "vrenums.cpp"

	mod.set_const("VREvent_Data_tLen", sizeof(vr::VREvent_Data_t));
	mod.set_const("VROverlayIntersectionMaskPrimitive_Data_tLen", sizeof(vr::VROverlayIntersectionMaskPrimitive_Data_t));

	// // ./headers/openvr.h:130
  // mod.add_bits<vr::ETextureType>("ETextureType");
	// mod.set_const("TextureType_Invalid", vr::TextureType_Invalid);
  // mod.set_const("TextureType_DirectX", vr::TextureType_DirectX);
  // mod.set_const("TextureType_OpenGL", vr::TextureType_OpenGL);
  // mod.set_const("TextureType_Vulkan", vr::TextureType_Vulkan);
  // mod.set_const("TextureType_IOSurface", vr::TextureType_IOSurface);
  // mod.set_const("TextureType_DirectX12", vr::TextureType_DirectX12);
  // mod.set_const("TextureType_DXGISharedHandle", vr::TextureType_DXGISharedHandle);
  // mod.set_const("TextureType_Metal", vr::TextureType_Metal);
  //
	// // ./headers/openvr.h:145130
  // mod.add_bits<vr::EColorSpace>("EColorSpace");
	// mod.set_const("ColorSpace_Auto", vr::ColorSpace_Auto);
	// mod.set_const("ColorSpace_Gamma", vr::ColorSpace_Gamma);
	// mod.set_const("ColorSpace_Linear", vr::ColorSpace_Linear);

}
