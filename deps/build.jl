# https://julialang.github.io/Pkg.jl/v1/creating-packages/#Adding-a-build-step-to-the-package.-1

cd(dirname(dirname(@__FILE__)))

# https://github.com/JuliaPackaging/BinaryProvider.jl
using BinaryProvider

# https://github.com/JuliaPackaging/BinDeps.jl
# using BinDeps
#   ⇒ the future is BinaryBuilder and BinaryProvider

# https://juliapackaging.github.io/BinaryBuilder.jl/latest/
# using BinaryBuilder # TODO: much complicated, many instable
# examples
#   https://github.com/staticfloat/IpoptBuilder/blob/master/build_tarballs.jl

# import Compat.Sys


with_samples = true
build_samples = true

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

prefix = Prefix("./deps") # `/` also on windows?
@assert ~isempty(prefix.path) ""

openvr_dirname = "openvr-1.2.10"
openvr_dir = joinpath(prefix.path,openvr_dirname)
openvr_sample_dir = joinpath(openvr_dir,"samples")
openvr_bin_dir = joinpath(openvr_dir,"lib",os_dirname)

openvr_url  = "https://github.com/ValveSoftware/openvr/archive/v1.2.10.tar.gz"
openvr_tar_gz_sha256 = "969b8696f00164bb6f7dcb15bdb399fd5e63dbf8961de812c7b0f0a1c440b869"

ispath(openvr_dir) && rm(openvr_dir; recursive=true)
install(openvr_url, openvr_tar_gz_sha256; prefix=prefix)

for d in [d for d in readdir(openvr_dir) if d ∉ ["lib", "headers", "LICENSE", with_samples ? "samples" : "", "README.md"] ]
  println("removing " * joinpath(openvr_dir,d))
  rm(joinpath(openvr_dir,d); recursive=true)
end

if with_samples
  for d in [d for d in readdir(openvr_sample_dir) if d ∉ ["bin", "hellovr_opengl", "shared", "README.md", "CMakeLists.txt", "thirdparty"] ]
    println("removing " * joinpath(openvr_sample_dir,d))
    rm(joinpath(openvr_sample_dir,d); recursive=true)
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

wrapper_src_dir=joinpath(prefix.path,"wrapper")
wrapper_build_dir=openvr_bin_dir
cd(wrapper_src_dir)
cmd_make="make"

using CxxWrap

oldENV=copy(ENV) # save environment
  ENV["BUILD_DIR"        ] = wrapper_build_dir
  ENV["SRC_DIR"          ] = "."
  ENV["JULIA_INCLUDE_DIR"] = "/usr/include/julia" # windows? osx?
  ENV["OPENVR_DIR"       ] = openvr_dir
  ENV["JLCXX_DIR"        ] = CxxWrap.prefix().path
  ENV["OS_DIR"           ] = os_dirname
  ENV["OS_SO_EXTENSION"  ] = os_so_extension
  ENV["CXX"              ] = "gcc"
  println("building openvr wrapper with the following settings:")
  println("  BUILD_DIR         = $(ENV["BUILD_DIR"        ])")
  println("  SRC_DIR           = $(ENV["SRC_DIR"          ])")
  println("  JULIA_INCLUDE_DIR = $(ENV["JULIA_INCLUDE_DIR"])")
  println("  OPENVR_DIR        = $(ENV["OPENVR_DIR"       ])")
  println("  JLCXX_DIR         = $(ENV["JLCXX_DIR"        ])")
  println("  OS_DIR            = $(ENV["OS_DIR"           ])")
  println("  OS_SO_EXTENSION   = $(ENV["OS_SO_EXTENSION"  ])")
  println("  CXX               = $(ENV["CXX"              ])")
  p = run(`$cmd_make`)
for kv in oldENV; ENV[kv[1]] = kv[2]; end  # restore environment
@assert p.exitcode == 0 "make has failed"
