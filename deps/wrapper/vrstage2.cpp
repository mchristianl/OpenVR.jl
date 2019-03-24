
#include <openvr.h>
#include <jlcxx/jlcxx.hpp>
#include <jlcxx/const_array.hpp>
#include <iostream>

// NOTE: TODO: IMPORTANT: they actally already have the API in a json format!
//  https://github.com/ValveSoftware/openvr/blob/823135df1783009cb468d0fc4190816254f7687d/headers/openvr_api.json
// and they used that to create bindings for C#
//  https://github.com/ValveSoftware/openvr/blob/823135df1783009cb468d0fc4190816254f7687d/headers/openvr_api.cs
// and a C api with generated function tables
//  https://github.com/ValveSoftware/openvr/blob/823135df1783009cb468d0fc4190816254f7687d/headers/openvr_capi.h

namespace jlcxx
{
  // clang-query -c="set output print" -c="match enumDecl(isExpansionInMainFile())" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | grep -Ev "^Binding for.*$|^$|^Match #.*:$" | sed -ne "s/^enum \(.*\) {/template<> struct IsBits<vr::\1> : std::true_type {};/p" > vrenumsisbits.cpp
  #include "vrenumsisbits.cpp"

  // // ./headers/openvr.h:124
  // template<> struct IsBits<vr::EVREye> : std::true_type {};
  // // ./headers/openvr.h:130
  // template<> struct IsBits<vr::ETextureType> : std::true_type {};
  // // ./headers/openvr.h:145
  // template<> struct IsBits<vr::EColorSpace> : std::true_type {};
  // // ./headers/openvr.h:563
  // template<> struct IsBits<vr::EVRSubmitFlags> : std::true_type {};
  // // ./headers/openvr.h:2838
  // template<> struct IsBits<vr::EVRCompositorError> : std::true_type {};

  // template<> struct IsImmutable<vr::Texture_t> : std::true_type {};
  // template<> struct IsBits<vr::Texture_t> : std::true_type {};
  // template<> struct IsBits<vr::VRTextureBounds_t> : std::true_type {};

  // TODO: this holds for all Julia-isbits types
  template<> struct IsBits<vr::HmdMatrix44_t> : std::true_type {};
  template<> struct IsBits<vr::HmdMatrix34_t> : std::true_type {};


  // SDL_Window is defined as a forward declaration only because it should only be used as a pointer
  //  this clashed with jlcxx
  // void SDL_GL_SwapWindow(void* window){ SDL_GL_SwapWindow((SDL_Window*)window); }

  template<> struct static_type_mapping<char*>
  {
    //typedef jl_value_t* type;
    typedef char* type;
    static jl_datatype_t* julia_type() { return (jl_datatype_t*)jl_get_global(jl_base_module, jl_symbol("Cstring")); } // the const char * variant uses AbstractString, but also handles that case with jl_string_ptr and jl_cstr_to_string
    // static jl_datatype_t* julia_type() { // static_type_mapping variant
    //   if(type_pointer() == nullptr) throw std::runtime_error("Type " + std::string(typeid(SourceT).name()) + " has no Julia wrapper");
    //   return type_pointer(); }
  };

  // template<> struct static_type_mapping<VkPhysicalDevice_T*>{
  //   typedef VkPhysicalDevice_T* type;
  //   static jl_datatype_t* julia_type() { return (jl_datatype_t*)apply_type((jl_value_t*)jl_pointer_type, jl_svec1((jl_datatype_t*)jl_get_global(jl_base_module, jl_symbol("Nothing")))); }
  // };
}

JLCXX_MODULE define_julia_module(jlcxx::Module& mod)
{
  // mod.method("main2", &main2); // just a test

  // TODO: enums also need statically mapped pointers
  // TODO: static const k_unTrackedDeviceIndex_Hmd and similiar from clang-query

  mod.set_const("std_stringLen", sizeof(std::string));

  // CxxWrap.jl and libcxxwrap are different github projects. The latter can be found here:
  //  https://github.com/JuliaInterop/libcxxwrap-julia

  // https://eli.thegreenplace.net/2014/07/29/ast-matchers-and-clang-refactoring-tools
  // https://devblogs.microsoft.com/cppblog/exploring-clang-tooling-part-2-examining-the-clang-ast-with-clang-query/
  // https://stackoverflow.com/questions/44888329/clang-tool-how-to-treat-h-header-as-c-file
  // https://clang.llvm.org/docs/LibASTMatchersReference.html#hasName0Anchor
  //  Node matchers are the only matchers that support the bind("id") call to bind the matched node to the given string, to be later retrieved from the match callback.
  // clang-query -c="set output print" -c="match enumDecl(isExpansionInMainFile())" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | grep -Ev "^Binding for.*$|^$|^Match #.*:$"

  // clang-query -c="set output print" -c="match enumDecl(isExpansionInMainFile())" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | grep -Ev "^Binding for.*$|^$|^Match #.*:$" | sed -ne "s/^enum \(.*\) {/mod.add_bits<vr::\1>(\"\1\");/p" > vrenums.cpp
  // #include "vrenums.cpp"

  // clang-query -c="set output print" -c="match enumDecl(isExpansionInMainFile())" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | grep -Ev "^Binding for.*$|^$|^Match #.*:$|^[0-9]+ matches.$" | grep -Ev "^enum.*$|^}$" | sed -e "s/ *=.*//" -e "s/^ *\([^ ,]\+\).*/mod.set_const(\"\1\", vr::\1);/" > vrconstants.cpp
  #include "vrconstants.cpp"

  // clang-query -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h -c="set output dump" -c="match varDecl(isExpansionInMainFile())" | sed -r "s/[[:cntrl:]]\[([0-9]{1,3};)*[0-9]{1,3}m//g" | grep -E "^VarDecl.*" | grep const | sed -e "s/.* \([^ ]\+\) '.*/mod.set_const(\"\1\", vr::\1);/"
  #include "vrconstants2.cpp"

  // S1="jlcxx::static_type_mapping<"; S2A=">::set_julia_type((jl_datatype_t*)jlcxx::julia_type(\""; S2B=">::set_reference_type((jl_datatype_t*)jlcxx::julia_type(\""; S3="\"));"; clang-query -c="set output dump" -c="set bind-root false" -c=" match decl(cxxRecordDecl(allOf(isExpansionInMainFile(),isStruct(),hasDefinition())).bind(\"r\"))" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | sed -r "s/[[:cntrl:]]\[([0-9]{1,3};)*[0-9]{1,3}m//g" | grep -E "^CXXRecordDecl" | sed -e "s/^.* struct \([^ ]\+\).*/${S1}vr::\1${S2A}\1${S3}\n${S1}vr::\1${S2B}\1Ref${S3}\n${S1}const vr::\1\*${S2A}\1Ptr${S3}\n${S1}vr::\1\*${S2A}\1Ptr${S3}\n/" > vrstaticmapping.cpp
  #include "vrstaticmapping.cpp"
  // see Module::add_type_internal in module.hpp:945
  // we are basically doing the first part of Module::add_type_internal directly in Julia
  // and do the second part in c++, i.e. set_julia_type, set_reference_type, set_allocated_type

  // Register the type
  // if(!is_parametric)
  // {
  //   set_julia_type<T>(base_dt);
  //   add_null_constructor<T>();
  //   add_default_constructor<T>(DefaultConstructible<T>(), base_dt);
  //   add_copy_constructor<T>(CopyConstructible<T>(), base_dt);
  //   static_type_mapping<T>::set_reference_type(ref_dt);
  //   static_type_mapping<T>::set_allocated_type(alloc_dt);
  // }


  jlcxx::static_type_mapping<vr::RenderModel_TextureMap_t*>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_TextureMap_tRef"));
  jlcxx::static_type_mapping<vr::RenderModel_TextureMap_t*>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_TextureMap_tPtrRef"));
  jlcxx::static_type_mapping<const vr::RenderModel_TextureMap_t**>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_TextureMap_tPtrRef"));
  jlcxx::static_type_mapping<vr::RenderModel_TextureMap_t**>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_TextureMap_tPtrRef"));

  // jlcxx::static_type_mapping<vr::RenderModel_TextureMap_t*>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_TextureMap_tPtrRef"));
  // jlcxx::static_type_mapping<vr::RenderModel_TextureMap_t**>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_TextureMap_tPtrRef"));

  jlcxx::static_type_mapping<vr::RenderModel_t*>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_tRef"));
  jlcxx::static_type_mapping<vr::RenderModel_t*>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_tPtrRef"));
  jlcxx::static_type_mapping<const vr::RenderModel_t**>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_tPtrRef"));
  jlcxx::static_type_mapping<vr::RenderModel_t**>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_tPtrRef"));

  // jlcxx::static_type_mapping<vr::RenderModel_t*>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_tPtrRef"));
  // jlcxx::static_type_mapping<vr::RenderModel_t**>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("RenderModel_tPtrRef"));

  // jlcxx::static_type_mapping<CGLRenderModel>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("CGLRenderModel"));
  // jlcxx::static_type_mapping<CGLRenderModel>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("CGLRenderModelRef"));
  // jlcxx::static_type_mapping<const CGLRenderModel*>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("CGLRenderModelRef"));
  // jlcxx::static_type_mapping<CGLRenderModel*>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("CGLRenderModelRef"));

  // S1="jlcxx::static_type_mapping<"; S2A=">::set_reference_type((jl_datatype_t*)jlcxx::julia_type(\""; S2B=">::set_julia_type((jl_datatype_t*)jlcxx::julia_type(\""; S3="Ref\"));"; clang-query -c="set output print" -c="match enumDecl(isExpansionInMainFile())" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | grep -Ev "^Binding for.*$|^$|^Match #.*:$" | sed -ne "s/^enum \(.*\) {/${S1}vr::\1${S2A}\1${S3}\n${S1}const vr::\1\*${S2B}\1${S3}\n${S1}vr::\1\*${S2B}\1${S3}\n/p" > vrenumsrefs.cpp
  #include "vrenumsrefs.cpp"

  // clang-query -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h -c="set output dump" -c="set bind-root false" -c="match decl(eachOf(cxxRecordDecl(allOf(isExpansionInMainFile(),isClass(),hasDefinition())).bind(\"r\"),cxxRecordDecl(allOf(isExpansionInMainFile(),isClass(),forEach(anyOf(cxxMethodDecl(allOf(isPublic(),unless(isDefaulted()))).bind(\"m\"),fieldDecl(isPublic()).bind(\"f\")))))))" | sed -r "s/[[:cntrl:]]\[([0-9]{1,3};)*[0-9]{1,3}m//g" | grep -E "^FieldDecl|^CXXMethodDecl|^CXXRecordDecl" | sed -e "s/CXXRecordDecl.*class \(.*\) definition/\1/" -e "s/^CXXMethodDecl.*> [^ ]* \(implicit \)\?\(used \)\?\(constexpr \)\?\(referenced \)\?\([^ ]\+\).*/  \5/" | (sed -ne ":r;/^  /b m;h;s/.*/mod.add_type<vr::&>(\"&\")/;p;z;N;s/^\n//;b r;:m;/^[^ ]/{i\\" -e ";" -e ";b r};G;s/  \(.*\)\n\(.*\)/  \.method(\"\1\", \&vr::\2::\1)/;p;z;N;s/^\n//;b m"; echo ";")
  #include "vrclasses.cpp"

  // clang-query -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h -c="set output dump" -c="match functionDecl(allOf(isExpansionInMainFile(),isDefinition()))" | sed -r "s/[[:cntrl:]]\[([0-9]{1,3};)*[0-9]{1,3}m//g" | grep -E "^FunctionDecl" | sed -e "s/.* \(.\+\) '.*/mod.method(\"\1\", \&vr::\1);/"
  #include "vrmethods.cpp"

  // TODO:
  // due to VkPhysicalDevice_T (opaque type, forward declaration only)
  // .method("GetVulkanDeviceExtensionsRequired", &vr::IVRCompositor::GetVulkanDeviceExtensionsRequired)
  // due to VkInstance_T (opaque type, forward declaration only)
  // .method("GetOutputDevice", &vr::IVRSystem::GetOutputDevice)
  // and due to short unsigned int (missing type mapping)
  // .method("TriggerHapticPulse", &vr::IVRSystem::TriggerHapticPulse)

  // there are four overloaded methods
  //   .method("SetString", static_cast<void(vr::CVRSettingHelper::*)(const char *, const char *, const char *, vr::EVRSettingsError *)>(&vr::CVRSettingHelper::SetString))
  //   .method("SetString", static_cast<void(vr::CVRSettingHelper::*)(const std::string &, const std::string &, const std::string &, vr::EVRSettingsError *)>(&vr::CVRSettingHelper::SetString))
  //   .method("GetString", static_cast<void(vr::CVRSettingHelper::*)(const char *, const char *, char *, uint32_t, vr::EVRSettingsError *)>(&vr::CVRSettingHelper::GetString))
  //   .method("GetString", static_cast<std::string(vr::CVRSettingHelper::*)(const std::string &, const std::string &, vr::EVRSettingsError *)>(&vr::CVRSettingHelper::GetString))
  // this information is available in clang

  // clang-query -c="set output dump" -c="set bind-root false" -c=" match decl(eachOf(cxxRecordDecl(allOf(isExpansionInMainFile(),isStruct(),hasDefinition())).bind(\"r\"), recordDecl(allOf(isExpansionInMainFile(),isStruct(),forEach(fieldDecl().bind(\"f\"))))))" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | sed -r "s/[[:cntrl:]]\[([0-9]{1,3};)*[0-9]{1,3}m//g" | grep -E "^CXXRecordDecl|^FieldDecl"

  // clang-query -c="set output dump" -c="set bind-root false" -c=" match decl(eachOf(cxxRecordDecl(allOf(isExpansionInMainFile(),isStruct(),hasDefinition())).bind(\"r\"), recordDecl(allOf(isExpansionInMainFile(),isStruct(),forEach(fieldDecl().bind(\"f\"))))))" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | sed -r "s/[[:cntrl:]]\[([0-9]{1,3};)*[0-9]{1,3}m//g" | grep -E "^CXXRecordDecl|^FieldDecl" | sed -e "s/^FieldDecl.* \([^ ]\+\) '\([^']\+\)'.*/  \1 :: \2/" -e "s/^CXXRecordDecl.* \([^ ]\+\) definition/end\nstruct \1/" -e "s/vr:://" -e "s/float/Float32/" -e "s/double/Float64/" -e "s/char/Cchar/" -e "s/uint\(.*\)_t/UInt\1/" -e "s/int\(.*\)_t/Int\1/" -e "s/bool/Bool/" -e "s/void \*/Ptr{Nothing}/" -e "s/ \([^ ]\+\) \*/ Ptr{\1}/" -e "s/ \([^ ]\+\) \[\(.*\)\]/ SArray{Tuple{\2},\1}/" -e "s/\(Tuple{.*\)\]\[\(.*}\)/\1,\2/" -e "s/\(Tuple{.*\)\]\[\(.*}\)/\1,\2/"


  // now, one could use
  //  clang-query -c="set output print" -c="match recordDecl(isExpansionInMainFile())" -extra-arg-before=-xc++ /home/christianl/src/openvr/headers/openvr.h | grep -E "^class.*$|^struct.*$" | sed -ne s/"^\([^ ]\+\) \([^ ]\+\).*$/mod.add_type<vr::\2>(\"\2\"); \/\/ \1/p" | uniq
  // but it is not quite clear how to map bitstypes
  //  since there are interfaces like `const Texture_t *pTexture` which somehow clash with CxxWrap
  // or, when we make them all non-bitstypes,

  // mod.method("SDL_StartTextInput", &SDL_StartTextInput);
  // mod.method("SDL_ShowCursor", &SDL_ShowCursor);
  // mod.method("SDL_StopTextInput", &SDL_StopTextInput);
  // // mod.add_type<SDL_Window*>("SDL_WindowPtr");
  // mod.method("SDL_GL_SwapWindow", &jlcxx::SDL_GL_SwapWindow);

  mod.method("stdstringToJuliaString", [](void * str) -> std::string { return str ? *(std::string*)str : ""; });
  mod.method("setJuliaStringTostdstring", [](std::string str, void*trg) { if(trg) *(std::string*)trg = str; }); // calls assignment operator

  // ./headers/openvr.h:4884:  inline IVRCompositor *VR_CALLTYPE VRCompositor() { return OpenVRInternal_ModuleContext().VRCompositor(); }

  // // ./headers/openvr.h:124
  // mod.add_bits<vr::EVREye>("EVREye");
  // mod.set_const("Eye_Left", vr::Eye_Left);
  // mod.set_const("Eye_Right", vr::Eye_Right);

  // mod.add_type<vr::Texture_t>("Texture_t")
  //   .constructor<>();

  // jlcxx::static_type_mapping<vr::Texture_t>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("Texture_t"));
  // jlcxx::static_type_mapping<const vr::Texture_t *>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("Texture_tRef"));
  // jlcxx::static_type_mapping<vr::Texture_t>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("Texture_tRef"));
  //
  // jlcxx::static_type_mapping<vr::VRTextureBounds_t>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("VRTextureBounds_t"));
  // jlcxx::static_type_mapping<const vr::VRTextureBounds_t *>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("VRTextureBounds_tRef"));
  // jlcxx::static_type_mapping<vr::VRTextureBounds_t>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("VRTextureBounds_tRef"));

  // printf("(jl_datatype_t*)jlcxx::julia_type(\"Texture_tRef\") = %x\n", (jl_datatype_t*)jlcxx::julia_type("Texture_tRef"));
  // jlcxx::static_type_mapping<const vr::Texture_t*>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("Texture_tRef"));

  // mod.add_type<vr::VRTextureBounds_t>("VRTextureBounds_t");

  // jlcxx::static_type_mapping<vr::ETrackedPropertyError>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("ETrackedPropertyError"));
  // jlcxx::static_type_mapping<vr::ETrackedPropertyError>::set_reference_type((jl_datatype_t*)jlcxx::julia_type("ETrackedPropertyErrorRef"));
  // jlcxx::static_type_mapping<const vr::ETrackedPropertyError*>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("ETrackedPropertyErrorRef"));
  // jlcxx::static_type_mapping<vr::ETrackedPropertyError*>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("ETrackedPropertyErrorRef"));

  // jlcxx::static_type_mapping<char*>::set_julia_type((jl_datatype_t*)jlcxx::julia_type("UInt8Ptr"));


  // mod.add_type<vr::IVRSystem>("IVRSystem")
  //   .method("IsInputAvailable", &vr::IVRSystem::IsInputAvailable)
  //   .method("GetBoolTrackedDeviceProperty", &vr::IVRSystem::GetBoolTrackedDeviceProperty)
  //   .method("GetFloatTrackedDeviceProperty", &vr::IVRSystem::GetFloatTrackedDeviceProperty)
  //   .method("GetInt32TrackedDeviceProperty", &vr::IVRSystem::GetInt32TrackedDeviceProperty)
  //   .method("GetUint64TrackedDeviceProperty", &vr::IVRSystem::GetUint64TrackedDeviceProperty)
  //   .method("GetMatrix34TrackedDeviceProperty", &vr::IVRSystem::GetMatrix34TrackedDeviceProperty)
  //   .method("GetArrayTrackedDeviceProperty", &vr::IVRSystem::GetArrayTrackedDeviceProperty)
  //   .method("GetStringTrackedDeviceProperty", &vr::IVRSystem::GetStringTrackedDeviceProperty)
  //   .method("GetPropErrorNameFromEnum", &vr::IVRSystem::GetPropErrorNameFromEnum);
  // mod.add_type<vr::IVRChaperone>("IVRChaperone");
  // mod.add_type<vr::IVRChaperoneSetup>("IVRChaperoneSetup");
  // mod.add_type<vr::IVRCompositor>("IVRCompositor")
  //   // ./headers/openvr.h:3007
  //   //   virtual EVRCompositorError Submit(
  //   //     EVREye eEye,
  //   //     const Texture_t *pTexture,
  //   //     const VRTextureBounds_t* pBounds = 0,
  //   //     EVRSubmitFlags nSubmitFlags = Submit_Default
  //   //   ) = 0;
  //   .method("Submit", &vr::IVRCompositor::Submit);
  // // mod.method("Submit", [](vr::IVRCompositor * comp, vr::EVREye eEye, const vr::Texture_t * pTexture, const vr::VRTextureBounds_t* pBounds = 0, vr::EVRSubmitFlags nSubmitFlags = vr::Submit_Default){
  // //   std::cout << "I am Submit and I got " << pTexture << std::endl;
  // //   pTexture && std::cout << " which is (" << pTexture->handle << ", " << pTexture->eType << ", " << pTexture->eColorSpace << ")" << std::endl;
  // //   return comp->Submit(eEye, pTexture, pBounds, nSubmitFlags);
  // // } );
  //
  // mod.method("SubmitTest", [](vr::Texture_t a, const vr::Texture_t b, const vr::Texture_t & c, vr::Texture_t & d, const vr::Texture_t * e, vr::Texture_t * f){
  //   std::cout << "I am Submit and I got" << std::endl;
  //   std::cout << "  a = (" << a.handle << ", " << a.eType << ", " << a.eColorSpace << ")" << std::endl;
  //   std::cout << "  b = (" << b.handle << ", " << b.eType << ", " << b.eColorSpace << ")" << std::endl;
  //   std::cout << "  c = (" << c.handle << ", " << c.eType << ", " << c.eColorSpace << ")" << std::endl;
  //   std::cout << "  d = (" << d.handle << ", " << d.eType << ", " << d.eColorSpace << ")" << std::endl;
  //   if(e) std::cout << "  e = (" << e->handle << ", " << e->eType << ", " << e->eColorSpace << ") @" << e << std::endl;
  //   else  std::cout << "  e = @ " << e << std::endl;
  //   if(f) std::cout << "  f = (" << f->handle << ", " << f->eType << ", " << f->eColorSpace << ") @ " << f << std::endl;
  //   else  std::cout << "  f = @ " << f << std::endl;
  // });

  std::cout << "sizeof(vr::TextureID_t) = " << sizeof(vr::TextureID_t) << "\n";

  std::cout << "sizeof(vr::RenderModel_t) = " << sizeof(vr::RenderModel_t) << "\n";
  std::cout << "  " << offsetof(vr::RenderModel_t,diffuseTextureId) << " diffuseTextureId\n";
  std::cout << "  " << offsetof(vr::RenderModel_t,rVertexData) << " rVertexData\n";
  std::cout << "  " << offsetof(vr::RenderModel_t,unVertexCount) << " unVertexCount\n";
  std::cout << "  " << offsetof(vr::RenderModel_t,rIndexData) << " rIndexData\n";
  std::cout << "  " << offsetof(vr::RenderModel_t,unTriangleCount) << " unTriangleCount\n";
  std::cout << "  " << offsetof(vr::RenderModel_t,diffuseTextureId) << " diffuseTextureId\n";

  std::cout << "sizeof(vr::RenderModel_TextureMap_t) = " << sizeof(vr::RenderModel_TextureMap_t) << "\n";
  std::cout << "  " << offsetof(vr::RenderModel_TextureMap_t,unWidth) << "unWidth\n";
  std::cout << "  " << offsetof(vr::RenderModel_TextureMap_t,unHeight) << "unHeight\n";
  std::cout << "  " << offsetof(vr::RenderModel_TextureMap_t,rubTextureMapData) << "rubTextureMapData\n";

  // mod.add_type<vr::IVROverlay>("IVROverlay");
  // mod.add_type<vr::IVRScreenshots>("IVRScreenshots");
  // mod.add_type<vr::IVRRenderModels>("IVRRenderModels");
  // mod.add_type<vr::IVRApplications>("IVRApplications");
  // mod.add_type<vr::IVRSettings>("IVRSettings");
  // mod.add_type<vr::IVRResources>("IVRResources");
  // mod.add_type<vr::IVRExtendedDisplay>("IVRExtendedDisplay");
  // mod.add_type<vr::IVRTrackedCamera>("IVRTrackedCamera");
  // mod.add_type<vr::IVRDriverManager>("IVRDriverManager");
  // mod.add_type<vr::IVRInput>("IVRInput");
  // mod.add_type<vr::IVRIOBuffer>("IVRIOBuffer");
  // mod.add_type<vr::IVRSpatialAnchors>("IVRSpatialAnchors");
  // mod.add_type<vr::IVRNotifications>("IVRNotifications");
  //
  // mod.method("VRSystem", &vr::VRSystem);
  // mod.method("VRChaperone", &vr::VRChaperone);
  // mod.method("VRChaperoneSetup", &vr::VRChaperoneSetup);
  // mod.method("VRCompositor", &vr::VRCompositor);
  // mod.method("VROverlay", &vr::VROverlay);
  // mod.method("VRScreenshots", &vr::VRScreenshots);
  // mod.method("VRRenderModels", &vr::VRRenderModels);
  // mod.method("VRApplications", &vr::VRApplications);
  // mod.method("VRSettings", &vr::VRSettings);
  // mod.method("VRResources", &vr::VRResources);
  // mod.method("VRExtendedDisplay", &vr::VRExtendedDisplay);
  // mod.method("VRTrackedCamera", &vr::VRTrackedCamera);
  // mod.method("VRDriverManager", &vr::VRDriverManager);
  // mod.method("VRInput", &vr::VRInput);
  // mod.method("VRIOBuffer", &vr::VRIOBuffer);
  // mod.method("VRSpatialAnchors", &vr::VRSpatialAnchors);
  // mod.method("VRNotifications", &vr::VRNotifications);

}
