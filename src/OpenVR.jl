
module OpenVR
  using Libdl
  using Cxx
  import Cxx.CxxCore.CppEnum
  import Cxx.CxxCore.CppMFptr
  import Cxx.CxxCore.CppValue
  import Cxx.CxxCore.CppPtr
  import Cxx.CxxCore.CxxQualType
  import Cxx.CxxCore.CppBaseType
  import Cxx.CxxCore.cppcall_member
  import Cxx.CxxCore.cppcall
  import Cxx.CxxCore.CppNNS
  import Cxx.CxxCore.CppTemplate
  import Cxx.CxxCore.CppRef

  reinterpret4cxx(::Type{T}     , x::T     ) where {T}                           = x
  reinterpret4cxx(::Type{Ptr{T}}, x::Ptr{U}) where {T,U}                         = convert(Ptr{T},x)
  reinterpret4cxx(::Type{Ptr{T}}, x::Ref{U}) where {T,U}                         = convert(Ptr{T},pointer_from_objref(x))
  reinterpret4cxx(::Type{T}     , x::U     ) where {T <: Cxx.CxxCore.CppEnum, U} = T(x)
  reinterpret4cxx(::Type{T}     , x::T     ) where {T <: Cxx.CxxCore.CppEnum}    = x

  const openvr_incpath = "/home/christianl/src/openvr/headers"
  const openvr_libpath = "/home/christianl/src/openvr/lib/linux64"

  function __init__()
    # /Cxx.cpp:1:1: note: '/usr/lib64/gcc/x86_64-pc-linux-gnu/9.2.0/../../../../include/openvr.h' included multiple times, additional include site here
    # __current_compiler__ = Cxx.new_clang_instance()
    addHeaderDir(openvr_incpath, kind=C_System)
    Libdl.dlopen(joinpath(openvr_libpath, "libopenvr_api.so"), Libdl.RTLD_GLOBAL)
    try
      cxxinclude("openvr.h")
    catch e
      # TODO: this throws when openvr is included multiple times, e.g. first during build and second at `using OpenVR`
    end
  end

  const include_openvr_enums               = joinpath(@__DIR__,"openvr_enums.jl")
  const include_openvr_consts              = joinpath(@__DIR__,"openvr_consts.jl")
  const include_openvr_functions           = joinpath(@__DIR__,"openvr_functions.jl")
  const include_openvr_methods             = joinpath(@__DIR__,"openvr_methods.jl")
  const include_openvr_enums_generated     = joinpath(@__DIR__,"openvr_enums_generated.jl")
  const include_openvr_consts_generated    = joinpath(@__DIR__,"openvr_consts_generated.jl")
  const include_openvr_functions_generated = joinpath(@__DIR__,"openvr_functions_generated.jl")
  const include_openvr_methods_generated   = joinpath(@__DIR__,"openvr_methods_generated.jl")

  cur_output_file = stdout

  # const GENERATE_BINDINGS          = true
  const GENERATE_BINDINGS          = !isfile(include_openvr_methods_generated)
  const INCLUDE_GENERATED_BINDINGS = true
  const DIRECT_DEFINITIONS         = false

  if GENERATE_BINDINGS || DIRECT_DEFINITIONS
    println("creating OpenVR bindings...")
    addHeaderDir(openvr_incpath, kind=C_System)
    Libdl.dlopen(joinpath(openvr_libpath, "libopenvr_api.so"), Libdl.RTLD_GLOBAL)
    try
      cxxinclude("openvr.h")
    catch e
      # TODO: this throws when openvr is included multiple times, e.g. first during build and second at `using OpenVR`
    end

    macro mkCppConst(cname)
      cxx_quot = :( vr::$cname )
      println(cxx_quot)
      cppconst = __module__.eval(:( @cxx $cxx_quot ))
      if cppconst isa Cxx.CxxCore.CppPtr{UInt8,(true, false, false)}
        printval = "\"" * unsafe_string(reinterpret(Ptr{Int8},cppconst)) * "\""
      elseif cppconst isa Ptr{UInt8}
        printval = "\"" * unsafe_string(convert(Ptr{Int8},cppconst)) * "\""
      elseif cppconst isa CppEnum
        constructor = string(typeof(cppconst).parameters[1])[length("vr::")+1:end]
        printval = "$constructor($(cppconst.val))"
      elseif cppconst isa DataType
        printval = replace(string(cppconst), "Cxx.CxxCore." => "")
      else
        constructor = typeof(cppconst)
        printval = "$constructor($cppconst)"
      end
      if cppconst isa DataType
        GENERATE_BINDINGS && println(cur_output_file,"export $(string(cname))")
        GENERATE_BINDINGS && println(cur_output_file,"const $(string(cname)) = $printval")
        DIRECT_DEFINITIONS || return :()
        return quote
          export $(esc(cname))
          const $(esc(cname)) = $cppconst
        end
      else
        GENERATE_BINDINGS && println(cur_output_file,"const $(string(cname)) = $printval")
        DIRECT_DEFINITIONS || return :()
        return quote
          const $(esc(cname)) = $cppconst
        end
      end
    end
    quote2string(q) = strip(replace(replace(repr(q)[length("quote\n")+1:end-length("\nend")], r" *#=.*=# *\n" => s""), r"\n *" => s"; "))
    joinargstrindent(arr::Vector{String},del,i;forcenl = false) =
      ( length(arr) == 0
      ? ""
      : length(arr) == 1 && !forcenl
      ? arr[1]
      : let istr = repeat(" ",i)
            "\n" * istr * repeat(" ",length(del)) * join(arr,"\n" * istr * del) * "\n" * istr
        end
      )

    macro cppFun(fname)
      cppfun = __module__.eval(quote
        typeof(@cxx vr::&$fname).parameters[1]
      end)
    end
    # reinterpret4cxx(::Type{T},x::Ref{U}) where {T,U} = reinterpret(T,convert(Ptr{U},pointer_from_objref(x)))
    macro mkCppFun(fname)
      cppfun      = __module__.eval(:( typeof($(__module__).@cxx vr::&$fname).parameters[1] ))
      rtype       = cppfun.parameters[1]
      args        = cppfun.parameters[2].parameters
      argstyp     = [:(                      $(esc(Symbol("arg$n")))::$T  ) for (n,T) in enumerate(args)]
      arglist     = [:(                      $(esc(Symbol("arg$n")))      ) for (n,T) in enumerate(args)]
      argsipt     = [:( $reinterpret4cxx($T, $(esc(Symbol("arg$n")))    ) ) for (n,T) in enumerate(args)]
      argstyp_str = [                       "arg$n :: $T" for (n,T) in enumerate(args)]
      arglist_str = [                       "arg$n"       for (n,T) in enumerate(args)]
      argsipt_str = [   "reinterpret4cxx($T, arg$n)"      for (n,T) in enumerate(args)]
      q1 = quote
        function $(esc(fname))( $(argstyp...) )::$rtype
          # $Cxx.@cxx vr::$fname( $(arglist...) )
          # ($(__module__.Cxx.CxxCore.cppcall))(
          #      $(__module__.__current_compiler__)
          #   , ($(__module__.Cxx.CxxCore.CppNNS)){(Tuple){:vr, $(QuoteNode(Symbol(fname)))}}()
          #     , $(arglist...) )
          $cppcall( $__current_compiler__
                  , $CppNNS{(Tuple){:vr, $(QuoteNode(Symbol(fname)))}}()
                  , $(arglist...) )
        end
      end
      s1 = """
      $(string(fname))($(joinargstrindent(argstyp_str,", ",2))) $(length(arglist) < 2 ? "" : "     "):: $rtype =
        cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :$(string(fname))}}()$(length(arglist_str) > 0 ? ", " : "")$(join(arglist_str,", ")))"""
      s1 = replace(s1, "Cxx.CxxCore." => "")
      GENERATE_BINDINGS && println(cur_output_file,"export $fname")
      GENERATE_BINDINGS && println(cur_output_file,s1)
      if isempty(arglist)
        GENERATE_BINDINGS && println(cur_output_file)
        DIRECT_DEFINITIONS || return :()
        return quote
            export $(esc(fname))
            $q1
          end
      else
        q2 = quote
               function $(esc(fname))( $(arglist...) )::$rtype
                 $(esc(fname))( $(argsipt...) )
               end
             end
        s2 = """
        $(string(fname))($(join(arglist_str,", "))) =
          $(string(fname))($(joinargstrindent(argsipt_str,", ",4)))"""
        GENERATE_BINDINGS && println(cur_output_file,s2)
        GENERATE_BINDINGS && println(cur_output_file)
        DIRECT_DEFINITIONS || return :()
        return quote
            export $(esc(fname))
            $q1
            $q2
          end
      end
    end

    macro mkCppMethodCast(cname,fname,rtype,argtypes)
      argtypes_str =
        if argtypes isa Expr && argtypes.head == :tuple
          argtypes_str = join(string.(argtypes.args), ",")
        elseif argtypes isa String
          if startswith(argtypes,"(") && endswith(argtypes,")")
            argtypes[2:end-1]
          else
            argtypes
          end
        else
          string(argtypes)
        end
      # .method("SetString", static_cast<void(vr::CVRSettingHelper::*)(const char *, const char *, const char *, vr::EVRSettingsError *)>(&vr::CVRSettingHelper::SetString))
      cname_str = string(cname)
      fname_str = string(fname)
      rtype_str = string(rtype)
      icxx_str = "static_cast<$rtype_str(vr::$cname_str::*)($argtypes_str)>(&vr::$cname_str::$fname_str);"
      println(icxx_str)
      cppmet = __module__.eval(:( typeof(@icxx_str $icxx_str)) )
      mkCppMethod_expr(cppmet,cname,fname; createConvenienceWrapper=false)
    end

    macro mkCppMethod(cname,fname)
      icxx_str = "&vr::$cname::$fname;"
      println(icxx_str)
      cppmet  = __module__.eval(:( typeof(@icxx_str $icxx_str) ))
      mkCppMethod_expr(cppmet,cname,fname)
    end

    macro mkCppMethodInline(cname,fname)
      cxx_quot = :( vr::$cname::&$fname )
      println(cxx_quot)
      cppmet  = __module__.eval(:( typeof(@cxx $cxx_quot) ))
      mkCppMethod_expr(cppmet,cname,fname)
    end

    function mkCppMethod_expr(cppmet,cname,fname; createConvenienceWrapper = true)
      cppmet <: Cxx.CxxCore.CppMFptr || return :( error("vr::$($cname)::$($fname) is not a method reference") )
      this = ( cppmet.parameters[1] <: (Cxx.CxxCore.CppValue{U,N} where {U,N})
             ? Cxx.CxxCore.CppPtr{cppmet.parameters[1].body.parameters[1], N} where N
             : return :( error("method call on *this :: $($(cppmet.parameters[1]))") )
             )
      cppfun  = cppmet.parameters[2]
      rtype   = cppfun.parameters[1]
      args    = cppfun.parameters[2].parameters
      argstyp = [:(                     $(esc(Symbol("arg$n")))::$T  ) for (n,T) in enumerate(args)]
      arglist = [:(                     $(esc(Symbol("arg$n")))      ) for (n,T) in enumerate(args)]
      argsipt = [:( $reinterpret4cxx($T, $(esc(Symbol("arg$n")))    ) ) for (n,T) in enumerate(args)]
      argstyp_str = [                       "arg$n :: $T" for (n,T) in enumerate(args)]
      arglist_str = [                       "arg$n"       for (n,T) in enumerate(args)]
      argsipt_str = [   "reinterpret4cxx($T, arg$n)"      for (n,T) in enumerate(args)]
      pushfirst!(argstyp, :( $(esc(Symbol("this")))::$this ))
      pushfirst!(arglist, :( $(esc(Symbol("this"))) ))
      pushfirst!(argsipt, :( $(esc(Symbol("this"))) ))
      pushfirst!(argstyp_str, "this :: $this" )
      pushfirst!(arglist_str, "this" )
      pushfirst!(argsipt_str, "this" )
      q1 = quote
        function $(esc(fname))( $(argstyp...) )::$rtype
          # $Cxx.@cxx vr::$fname( $(arglist...) )
          ($(Cxx.CxxCore.cppcall_member))(
               $(__current_compiler__)
            , ($(Cxx.CxxCore.CppNNS)){(Tuple){:GetStringTrackedDeviceProperty}}()
            , $(arglist...)
            )
        end
      end
      s1 = """
      $(string(fname))($(joinargstrindent(argstyp_str,", ",2; forcenl=true)))      :: $rtype =
        cppcall(__current_compiler__, CppNNS{(Tuple){:vr, :$(string(fname))}}()$(length(arglist_str) > 0 ? ", " : "")$(join(arglist_str,", ")))"""
      s1 = replace(s1, "Cxx.CxxCore." => "")
      GENERATE_BINDINGS && println(cur_output_file,"export $fname")
      GENERATE_BINDINGS && println(cur_output_file,s1)
      if length(arglist) == 1 || !createConvenienceWrapper
        GENERATE_BINDINGS && println(cur_output_file)
        DIRECT_DEFINITIONS || return :()
        return quote
            export $(esc(fname))
            $q1
          end
      else
        q2 = quote
               function $(esc(fname))( $(vcat(argstyp[1:1],arglist[2:end])...) )::$rtype
                 $(esc(fname))( $(argsipt...) )
               end
             end
        s2 = """
        $(string(fname))($(join(vcat(argstyp_str[1:1],arglist_str[2:end]),", "))) =
          $(string(fname))($(joinargstrindent(argsipt_str,", ",4)))"""
        s2 = replace(s2, "Cxx.CxxCore." => "")
        GENERATE_BINDINGS && println(cur_output_file,s2)
        GENERATE_BINDINGS && println(cur_output_file)
        DIRECT_DEFINITIONS || return :()
        return quote
            export $(esc(fname))
            $q1
            $q2
          end
      end
    end

    println("creating $include_openvr_enums_generated...")
    cur_output_file = open(include_openvr_enums_generated, "w")
      include(include_openvr_enums)
    close(cur_output_file)
    println("creating $include_openvr_consts_generated...")
    cur_output_file = open(include_openvr_consts_generated, "w")
      include(include_openvr_consts)
    close(cur_output_file)
    println("creating $include_openvr_functions_generated...")
    cur_output_file = open(include_openvr_functions_generated, "w")
      include(include_openvr_functions)
    close(cur_output_file)
    println("creating $include_openvr_methods_generated...")
    cur_output_file = open(include_openvr_methods_generated, "w")
      include(include_openvr_methods)
    close(cur_output_file)
    cur_output_file = stdout
  end

  if INCLUDE_GENERATED_BINDINGS
    include(include_openvr_enums_generated)
    include(include_openvr_consts_generated)
    include(include_openvr_functions_generated)
    include(include_openvr_methods_generated)
  end


  # julia> cxx"struct A{ int x; };"
  # true
  # julia> @cxxnew A()
  # (struct A *) @0x000055f2048a1eb0
  # julia> typeof(@cxxnew A())
  # Cxx.CxxCore.CppPtr{Cxx.CxxCore.CppValue{Cxx.CxxCore.CxxQualType{Cxx.CxxCore.CppBaseType{:A},(false, false, false)},N} where N,(false, false, false)}

  # ivrsystem
  # (class vr::IVRSystem *) @0x00007f543a2f00e0
  # julia> typeof(ivrsystem)
  # Cxx.CxxCore.CppPtr{Cxx.CxxCore.CxxQualType{Cxx.CxxCore.CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},(false, false, false)}

  # @cxx vr::IVRSystem::&GetEyeToHeadTransform
  # Cxx.CxxCore.CppMFptr{
  #   Cxx.CxxCore.CppValue{
  #     Cxx.CxxCore.CxxQualType{
  #       Cxx.CxxCore.CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)}
  #     , N
  #     } where N
  #   , Cxx.CxxCore.CppFunc{
  #       Cxx.CxxCore.CppValue{
  #         Cxx.CxxCore.CxxQualType{
  #           Cxx.CxxCore.CppBaseType{Symbol("vr::HmdMatrix34_t")},(false, false, false)},N} where N,Tuple{Cxx.CxxCore.CppEnum{Symbol("vr::EVREye"),UInt32}}}}(0x0000000000000021, 0x0000000000000000)


  # @mkCppConst IVRSystem
  # @mkCppConst IVRApplications
  # @mkCppConst IVRSettings
  # @mkCppConst IVRChaperone
  # @mkCppConst IVRChaperoneSetup
  # @mkCppConst IVRCompositor
  # @mkCppConst IVRNotifications
  # @mkCppConst IVROverlay
  # @mkCppConst IVRRenderModels
  # @mkCppConst IVRExtendedDisplay
  # @mkCppConst IVRTrackedCamera
  # @mkCppConst IVRScreenshots
  # @mkCppConst IVRResources
  # @mkCppConst IVRDriverManager
  # @mkCppConst IVRInput
  # @mkCppConst IVRIOBuffer
  # @mkCppConst IVRSpatialAnchors
  # @mkCppConst COpenVRContext

  const IVRSystem_ptr          = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSystem")},(false, false, false)},N} where N
  const IVRApplications_ptr    = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRApplications")},(false, false, false)},N} where N
  const IVRSettings_ptr        = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSettings")},(false, false, false)},N} where N
  const IVRChaperone_ptr       = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperone")},(false, false, false)},N} where N
  const IVRChaperoneSetup_ptr  = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRChaperoneSetup")},(false, false, false)},N} where N
  const IVRCompositor_ptr      = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRCompositor")},(false, false, false)},N} where N
  const IVRNotifications_ptr   = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRNotifications")},(false, false, false)},N} where N
  const IVROverlay_ptr         = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVROverlay")},(false, false, false)},N} where N
  const IVRRenderModels_ptr    = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRRenderModels")},(false, false, false)},N} where N
  const IVRExtendedDisplay_ptr = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRExtendedDisplay")},(false, false, false)},N} where N
  const IVRTrackedCamera_ptr   = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRTrackedCamera")},(false, false, false)},N} where N
  const IVRScreenshots_ptr     = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRScreenshots")},(false, false, false)},N} where N
  const IVRResources_ptr       = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRResources")},(false, false, false)},N} where N
  const IVRDriverManager_ptr   = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRDriverManager")},(false, false, false)},N} where N
  const IVRInput_ptr           = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRInput")},(false, false, false)},N} where N
  const IVRIOBuffer_ptr        = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRIOBuffer")},(false, false, false)},N} where N
  const IVRSpatialAnchors_ptr  = CppPtr{CxxQualType{CppBaseType{Symbol("vr::IVRSpatialAnchors")},(false, false, false)},N} where N
  const COpenVRContext_ptr     = CppPtr{CxxQualType{CppBaseType{Symbol("vr::COpenVRContext")},(false, false, false)},N} where N


  #  NOTE: it also might help to set the vr*-process' niceness to 19 and move the vrcompmositor windows "out of the visual viewport"
  function killall()
    println("VR_Shutdown...")
    VR_Shutdown()
    println("waiting for VR to shut down")
    sleep(2.0)
    println("sending term signal...")
    try; run(`pkill --signal TERM -f vrserver`);     catch e; end
    try; run(`pkill --signal TERM -f vrdashboard`);  catch e; end
    try; run(`pkill --signal TERM -f vrwebhelper`);  catch e; end
    try; run(`pkill --signal TERM -f vrcompositor`); catch e; end
    sleep(2.0)
    println("sending kill signal...")
    try; run(`pkill --signal KILL -f vrserver`);     catch e; end
    try; run(`pkill --signal KILL -f vrdashboard`);  catch e; end
    try; run(`pkill --signal KILL -f vrwebhelper`);  catch e; end
    try; run(`pkill --signal KILL -f vrcompositor`); catch e; end
    nothing
  end
end
