# https://julialang.github.io/Pkg.jl/v1/creating-packages/#Adding-a-build-step-to-the-package.-1

using SHA

cd(@__DIR__)

# https://github.com/JuliaPackaging/BinaryProvider.jl
# using BinaryProvider

# https://github.com/JuliaPackaging/BinDeps.jl
# using BinDeps
#   ⇒ the future is BinaryBuilder and BinaryProvider

# https://juliapackaging.github.io/BinaryBuilder.jl/latest/
# using BinaryBuilder # TODO: much complicated, many instable
# examples
#   https://github.com/staticfloat/IpoptBuilder/blob/master/build_tarballs.jl
#   BinaryBuilder.run_wizard()

# import Compat.Sys

with_samples   = false
build_samples  = false
force_download = false
keep_download  = false

# for examples, see
#  https://github.com/JuliaInterop/CxxWrap.jl/blob/master/deps/build.jl
#  https://github.com/JuliaMath/GSL.jl/blob/master/deps/build.jl
#  https://github.com/JuliaGraphics/Cairo.jl/blob/master/deps/build.jl
#  https://github.com/jonathanBieler/SimpleDirectMediaLayer.jl/blob/master/deps/build.jl

os_dirname = "unknown"
os_so_extension = ""
Sys.islinux()   &&                        (os_dirname = "linux64"; os_so_extension=".so")
Sys.isapple()   &&                        (os_dirname = "osx32"  ; os_so_extension=".dylib")
Sys.iswindows() && Sys.ARCH == :x86_32 && (os_dirname = "win32"  ; os_so_extension=".dll")
Sys.iswindows() && Sys.ARCH == :x86_64 && (os_dirname = "win64"  ; os_so_extension=".dll")
os_julia_include_dir = joinpath(dirname(Sys.BINDIR),"include","julia")

if build_samples && Sys.iswindows()
  # detect Visual studio https://docs.microsoft.com/de-de/cpp/build/building-on-the-command-line?view=vs-2017#developer_command_file_locations
  found = []
  program_files_x86_dir = ENV["ProgramFiles(x86)"]
  for d in readdir(program_files_x86_dir)
    m = match(r"^Microsoft Visual Studio(.*)$",d)
    if m !== nothing
      s = m.captures[1]
      msvc_dir = joinpath(program_files_x86_dir,m.match)
      if s == "" # MSVC 2017 (and later?)
        for version in readdir(msvc_dir)
          for edition in readdir(joinpath(msvc_dir,version))
            p = joinpath(msvc_dir,version,edition,"VC","Auxiliary","Build")
            ispath(p) && push!(found, (joinpath(version,edition),joinpath(p,"vcvars64.bat")))
          end
        end
      else # MSVC 2015 (and previous?)
        p = joinpath(msvc_dir,"VC")
        ispath(p) && push!(found,(s[2:end],joinpath(p,"vcvars64.bat")))
        p = joinpath(msvc_dir,"VC","bin")
        if ispath(p)
          push!(found,(s[2:end],joinpath(p,"vcvars64.bat")))
          for arch in readdir(p)
            push!(found,(s[2:end],joinpath(p,joinpath(p,arch,"vcvars64.bat"))))
          end
        end
      end
    end
  end
  found = filter(x -> isfile(x[2]),found)
  for (version,path) in found
      println("found Microsoft Visual Studio '$version' in '$path'")
  end
  if isempty(found)
    error("No version of Microsoft Visual Studio found")
  else
    version,path = found[1]
    println("using Microsoft Visual Studio '$version' in '$path'")
    p = run(`$path & cmd`)
  end
end

# prefix = Prefix("./deps") # `/` also on windows?
# @assert ~isempty(prefix.path) ""

openvr_version = "1.9.16"
openvr_dirname = "openvr-$openvr_version"
openvr_dir = joinpath(@__DIR__,openvr_dirname)
openvr_sample_dir = joinpath(openvr_dir,"samples")
openvr_bin_dir = joinpath(openvr_dir,"lib",os_dirname)

ispath(openvr_dir) && force_download && rm(openvr_dir; recursive=true, force=true)

# install(openvr_url, openvr_tar_gz_sha256; prefix=prefix, force=true)
if !ispath(openvr_dir)
  if Sys.islinux() || Sys.isapple()
    openvr_url  = "https://github.com/ValveSoftware/openvr/archive/v$openvr_version.tar.gz"
    openvr_tar_gz_sha256 = "8264e8dc20c926bc1828407a588b0755e15314f48a9b96bd1e550ac030174ecb"
    println("downloading $openvr_url")

    openvr_local_tar_gz="openvr-v$openvr_version.tar.gz"
    (!isfile(openvr_local_tar_gz)) && Base.download(openvr_url, openvr_local_tar_gz)

    println("Checksum...")
    openvr_sha2_256_file = bytes2hex(open(openvr_local_tar_gz) do f;  sha2_256(f); end)
    @assert openvr_tar_gz_sha256 == openvr_sha2_256_file "Checksum mismatch! Expected $openvr_tar_gz_sha256, downloaded $openvr_sha2_256_file"

    println("extracting...")
    run(`tar xf $openvr_local_tar_gz`)
    (!keep_download) && rm(openvr_local_tar_gz)
  elseif Sys.iswindows()
    openvr_url  = "https://github.com/ValveSoftware/openvr/archive/v$openvr_version.zip"
    openvr_zip_sha256 = "e7063fae06220345beb43f8d7a634ebde2be48099e5348f3fc4b506db771770c"
    println("downloading $openvr_url")

    openvr_local_zip="openvr-v$openvr_version.zip"
    (!isfile(openvr_local_zip)) && Base.download(openvr_url, openvr_local_zip)

    println("Checksum...")
    openvr_sha2_256_file = bytes2hex(open(openvr_local_zip) do f;  sha2_256(f); end)
    @assert openvr_zip_sha256 == openvr_sha2_256_file "Checksum mismatch! Expected $openvr_zip_sha256, downloaded $openvr_sha2_256_file"

    println("extracting...")
    # try; using ZipFile; catch e; using Pkg; Pkg.add("ZipFile"); using ZipFile; end
    sevenzip_path = joinpath(Sys.BINDIR, "7z.exe")
    !isfile(sevenzip_path) && (sevenzip_path = joinpath(Sys.BINDIR, "../libexec/7z.exe"))
    @assert isfile(sevenzip_path) "7zip not found in $sevenzip_path."
    run(`$(sevenzip_path) x -y $openvr_local_zip`)

    (!keep_download) && rm(openvr_local_zip)
  end
end

for d in [d for d in readdir(openvr_dir) if d ∉ ["lib", "bin", "headers", "LICENSE", with_samples ? "samples" : "", "README.md"] ]
  println("removing " * joinpath(openvr_dir,d))
  rm(joinpath(openvr_dir,d); recursive=true, force=true)
end

if with_samples
  for d in [d for d in readdir(openvr_sample_dir) if d ∉ ["bin", "hellovr_opengl", "shared", "README.md", "CMakeLists.txt", "thirdparty"] ]
    println("removing " * joinpath(openvr_sample_dir,d))
    rm(joinpath(openvr_sample_dir,d); recursive=true, force=true)
  end

  for d in ["driver_sample", "hellovr_vulkan", "helloworldoverlay", "tracked_camera_openvr_sample"]
    println("re-creating " * joinpath(openvr_sample_dir, d, "CMakeLists.txt"))
    mkpath(joinpath(openvr_sample_dir, d))
    touch(joinpath(openvr_sample_dir, d, "CMakeLists.txt"))
  end

  if build_samples
    mkpath(joinpath(openvr_sample_dir, "build"))
    cd(joinpath(openvr_sample_dir, "build"))
    p = run(`cmake ..`)
    @assert p.exitcode == 0 "Cmake has failed"

    p = run(`make`)
    @assert p.exitcode == 0 "make has failed"
  end

  # run(`$openvr_sample_dir/bin/$os_dirname/hellovr_opengl`)
end

# wrapper_src_dir=joinpath(prefix.path,"wrapper")
# wrapper_build_dir=openvr_bin_dir
# cd(wrapper_src_dir)
# cmd_make="make"
#
# using CxxWrap
#
# oldENV=copy(ENV) # save environment
#   ENV["BUILD_DIR"        ] = wrapper_build_dir
#   ENV["SRC_DIR"          ] = "."
#   ENV["JULIA_INCLUDE_DIR"] = os_julia_include_dir
#   ENV["OPENVR_DIR"       ] = openvr_dir
#   ENV["JLCXX_DIR"        ] = CxxWrap.prefix().path
#   ENV["OS_DIR"           ] = os_dirname
#   ENV["OS_SO_EXTENSION"  ] = os_so_extension
#   ENV["CXX"              ] = "gcc"
#   println("building openvr wrapper with the following settings:")
#   println("  BUILD_DIR         = $(ENV["BUILD_DIR"        ])")
#   println("  SRC_DIR           = $(ENV["SRC_DIR"          ])")
#   println("  JULIA_INCLUDE_DIR = $(ENV["JULIA_INCLUDE_DIR"])")
#   println("  OPENVR_DIR        = $(ENV["OPENVR_DIR"       ])")
#   println("  JLCXX_DIR         = $(ENV["JLCXX_DIR"        ])")
#   println("  OS_DIR            = $(ENV["OS_DIR"           ])")
#   println("  OS_SO_EXTENSION   = $(ENV["OS_SO_EXTENSION"  ])")
#   println("  CXX               = $(ENV["CXX"              ])")
#   p = run(`$cmd_make`)
# for kv in oldENV; ENV[kv[1]] = kv[2]; end  # restore environment
# @assert p.exitcode == 0 "make has failed"
