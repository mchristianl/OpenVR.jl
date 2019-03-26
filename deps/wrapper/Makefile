#!/bin/bash -x

# The (Julia-tweaked) hellovr_opengl example builds with
#
#  /usr/bin/c++ \
#    -DGNUC -DJULIA_ENABLE_THREADING=1 \
#    -DLINUX -DPOSIX \
#    -Dhellovr_julia_EXPORTS \
#    -I/home/christianl/src/openvr/samples/build/hellovr_opengl_julia \
#    -I/home/christianl/src/openvr/samples/hellovr_opengl_julia \
#    -I/home/christianl/src/openvr/samples/build/hellovr_opengl_julia/hellovr_julia_autogen/include \
#    -I/home/christianl/src/openvr/samples/. \
#    -I/home/christianl/src/openvr/samples/thirdparty/sdl2-2.0.3/include \
#    -I/usr/include/qt \
#    -I/usr/include/qt/QtCore \
#    -I/usr/lib/qt/mkspecs/linux-g++ \
#    -I/usr/include/qt/QtGui \
#    -I/usr/include/qt/QtWidgets \
#    -I/home/christianl/src/openvr/samples/../headers \
#    -I/home/christianl/src/openvr/samples/thirdparty/vulkan-1.0.49.0/include \
#    -I/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/include \
#    -I/usr/include/julia \
#    -std=c++11 \
#    -include /home/christianl/src/openvr/samples/shared/compat.h \
#    -std=c++14 \
#    -O3 \
#    -DNDEBUG \
#    -O2 \
#    -fPIC \
#    -o CMakeFiles/hellovr_julia.dir/hellovr_opengl_julia_main.cpp.o \
#    -c /home/christianl/src/openvr/samples/hellovr_opengl_julia/hellovr_opengl_julia_main.cpp
#
# and it links with
#
#  /usr/bin/c++ \
#    -fPIC \
#    -std=c++11 \
#    -include /home/christianl/src/openvr/samples/shared/compat.h \
#    -std=c++14 \
#    -O3 \
#    -DNDEBUG \
#    -O2 \
#    -shared \
#    -Wl,-soname,libhellovr_julia.so \
#    -o ../../bin/linux64/libhellovr_julia.so \
#    CMakeFiles/hellovr_julia.dir/__/shared/Matrices.cpp.o \
#    CMakeFiles/hellovr_julia.dir/__/shared/lodepng.cpp.o \
#    CMakeFiles/hellovr_julia.dir/__/shared/pathtools.cpp.o \
#    CMakeFiles/hellovr_julia.dir/__/shared/strtools.cpp.o \
#    CMakeFiles/hellovr_julia.dir/hellovr_opengl_julia_main.cpp.o \
#    CMakeFiles/hellovr_julia.dir/hellovr_julia_autogen/mocs_compilation.cpp.o \
#    -L/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/lib \
#    -L/home/christianl/src/openvr/bin/linux64 \
#    -Wl,-rpath,/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/lib:/home/christianl/src/openvr/bin/linux64 \
#    -lGL \
#    -lGLU \
#    -lGLEW \
#    -lSDL2 \
#    -lopenvr_api \
#    -ldl \
#    -lcxxwrap_julia \
#    -ljulia
#
# therefore we build with
#
#   /usr/bin/c++ \
#     -fPIC \
#     -O2 \
#     -std=c++14 \
#     -DGNUC -DJULIA_ENABLE_THREADING=1 \
#     -I/home/christianl/src/openvr/samples/../headers \
#     -I/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/include \
#     -I/usr/include/julia \
#     -o CMakeFiles/hellovr_julia.dir/hellovr_opengl_julia_main.cpp.o \
#     -c /home/christianl/src/openvr/samples/hellovr_opengl_julia/hellovr_opengl_julia_main.cpp
#
# and we link with
#
#   /usr/bin/c++ \
#     -fPIC \
#     -shared \
#     -Wl,-soname,libhellovr_julia.so \
#     -o ../../bin/linux64/libhellovr_julia.so \
#     CMakeFiles/hellovr_julia.dir/hellovr_opengl_julia_main.cpp.o \
#     -L/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/lib \
#     -L/home/christianl/src/openvr/bin/linux64 \
#     -Wl,-rpath,/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/lib:/home/christianl/src/openvr/bin/linux64 \
#     -lopenvr_api \
#     -ldl \
#     -lcxxwrap_julia \
#     -ljulia
#
# the following example reflects that

# gcc -fPIC
#   -O2
#   -std=c++14
#   -DGNUC
#   -DJULIA_ENABLE_THREADING=1
#   -I/home/christianl/owncloud/arbeit/tetshared/FEM/FEMday/OpenVR/deps/openvr-1.2.10/headers
#   -I/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/include
#   -I/usr/include/julia
#   -o /home/christianl/owncloud/arbeit/tetshared/FEM/FEMday/OpenVR/deps/openvr-1.2.10/lib/linux64/vrstage1.o
#   -c vrstage1.cpp
# gcc
#   -shared
#   -L/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/lib
#   -L/home/christianl/owncloud/arbeit/tetshared/FEM/FEMday/OpenVR/deps/openvr-1.2.10/bin/linux64
#   -Wl,-rpath,/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr/lib:/home/christianl/owncloud/arbeit/tetshared/FEM/FEMday/OpenVR/deps/openvr-1.2.10/bin/linux64
# 	-lopenvr_api
# 	-ldl
# 	-lcxxwrap_julia
# 	-ljulia
# 	-lstdc++
# 	-o/home/christianl/owncloud/arbeit/tetshared/FEM/FEMday/OpenVR/deps/openvr-1.2.10/lib/linux64/libvrstage1.so
# 	/home/christianl/owncloud/arbeit/tetshared/FEM/FEMday/OpenVR/deps/openvr-1.2.10/lib/linux64/vrstage1.o

# MS sets up environment variables in a "developer command prompt" or via vcvars.bat scripts
#  https://docs.microsoft.com/de-de/cpp/build/building-on-the-command-line?view=vs-2017#developer_command_file_locations
#   VS2017: \Program Files (x86)\Microsoft Visual Studio\2017\{Community, Professional, Enterprise, BuildTools, ...}\VC\Auxiliary\Build
#   VS2015: \Program Files (x86)\Microsoft Visual Studio 14.0\VC
#   VS2015: \Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin
#   VS2015: \Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\{amd64,x64,...}
# e.g "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
# there are environment variables
#   HOMEDRIVE=C:
#   ProgramFiles(x86)=C:\Program Files (x86)

# MS https://docs.microsoft.com/de-de/cpp/build/building-on-the-command-line?view=vs-2017
#  these command line options need not to be CAPSIZED
#  C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\Hostx64\x64
# cl.exe https://docs.microsoft.com/de-de/cpp/build/reference/compiler-options-listed-by-category?view=vs-2017
#   /O2
#   /std:c++14
#   /nologo
#   /EHsc
#   /DJULIA_ENABLE_THREADING#1
#   /I\home\christianl\.julia\packages\CxxWrap\KcmSi\deps\usr\include
#   /Fo\home\christianl\owncloud\arbeit\tetshared\FEM\FEMday\OpenVR\deps\openvr-1.2.10\lib\linux64\vrstage1.o
#   /c vrstage1.cpp
# link.exe https://docs.microsoft.com/de-de/cpp/build/reference/libpath-additional-libpath?view=vs-2017
#   /LIBPATH:\home\christianl\.julia\packages\CxxWrap\KcmSi\deps\usr\lib
#   /DLL
#   /MD
#   /OUT:\home\christianl\owncloud\arbeit\tetshared\FEM\FEMday\OpenVR\deps\openvr-1.2.10\lib\linux64\libvrstage1.dll
#   @objlist.txt
#   @liblist.txt
#   @exports.txt
# in Windows, we have .dll and .lib what both is in .so in linux
#  "a .lib used to refer to symbols exported from a DLL"
# lib.exe /LIST foo.lib
#   https://stackoverflow.com/questions/305287/how-to-see-the-contents-of-windows-library-lib/26689684

# no -rpath on windows
#  https://stackoverflow.com/questions/107888/is-there-a-windows-msvc-equivalent-to-the-rpath-linker-flag
#  You can use the function SetDllDirectory or AddDllDirectory inside your exe.
#  This is probably the closest to an RPATH, but only works on WinXP SP1 or later.
# Dynamic-Link Library Search Order
#  https://docs.microsoft.com/de-de/windows/desktop/Dlls/dynamic-link-library-search-order

# NOTE: we might also want to use relative paths in Linux, for being able to move/binarily distribute the shared libraries


ifeq ($(BUILD_DIR),)
BUILD_DIR=.
endif

ifeq ($(SRC_DIR),)
SRC_DIR=.
endif

ifeq ($(JULIA_INCLUDE_DIR),)
JULIA_INCLUDE_DIR:=/usr/include/julia
endif

ifeq ($(OPENVR_DIR),)
# OPENVR_DIR=/home/christianl/src/openvr
OPENVR_DIR:=/home/christianl/owncloud/arbeit/tetshared/FEM/FEMday/OpenVR/deps/openvr-1.2.10
endif

ifeq ($(JLCXX_DIR),)
# CxxWrap.prefix().path
JLCXX_DIR:=/home/christianl/.julia/packages/CxxWrap/KcmSi/deps/usr
endif

ifeq ($(OS_DIR),)
OS_DIR:=linux64
endif

ifeq ($(OS_SO_EXTENSION),)
OS_SO_EXTENSION:=.so
endif

INCLUDE_PATHS=-I$(OPENVR_DIR)/headers -I$(JLCXX_DIR)/include -I$(JULIA_INCLUDE_DIR)
CXX_FLAGS=-fPIC -O2 -std=c++14 -DGNUC -DJULIA_ENABLE_THREADING=1 $(INCLUDE_PATHS)

LIBRARY_PATHS=-L$(JLCXX_DIR)/lib -L$(OPENVR_DIR)/bin/$(OS_DIR)
LD_RPATHS=-Wl,-rpath,$(JLCXX_DIR)/lib:$(OPENVR_DIR)/bin/$(OS_DIR)
LIBS=-lopenvr_api -ldl -lcxxwrap_julia -ljulia -lstdc++
LD_FLAGS=-shared $(LIBRARY_PATHS) $(LD_RPATHS) $(LIBS)

ifeq ($(CXX),)
CXX:=/usr/bin/c++
endif

LD:=$(CXX)

ifeq ($(LD),)
LD:=/usr/bin/c++
endif

TARGET_LIBS=vrstage1 vrstage2
TARGETS=$(patsubst %,$(BUILD_DIR)/lib%$(OS_SO_EXTENSION),$(TARGET_LIBS))

.PHONY: all clean
all: $(TARGETS)
clean:
	-rm $(TARGETS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXX_FLAGS) -o $@ -c $<

$(BUILD_DIR)/lib%$(OS_SO_EXTENSION): $(BUILD_DIR)/%.o
	$(LD) $(LD_FLAGS) -o $@ $<
