# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rahulkrishnan/Documents/GitHub/gfx-final

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rahulkrishnan/Documents/GitHub/gfx-final/build

# Include any dependencies generated for this target.
include src/CMakeFiles/skinning.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/skinning.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/skinning.dir/flags.make

src/CMakeFiles/skinning.dir/animation_loader_saver.cc.o: src/CMakeFiles/skinning.dir/flags.make
src/CMakeFiles/skinning.dir/animation_loader_saver.cc.o: ../src/animation_loader_saver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/skinning.dir/animation_loader_saver.cc.o"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/skinning.dir/animation_loader_saver.cc.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/animation_loader_saver.cc

src/CMakeFiles/skinning.dir/animation_loader_saver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/skinning.dir/animation_loader_saver.cc.i"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/animation_loader_saver.cc > CMakeFiles/skinning.dir/animation_loader_saver.cc.i

src/CMakeFiles/skinning.dir/animation_loader_saver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/skinning.dir/animation_loader_saver.cc.s"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/animation_loader_saver.cc -o CMakeFiles/skinning.dir/animation_loader_saver.cc.s

src/CMakeFiles/skinning.dir/bone_geometry.cc.o: src/CMakeFiles/skinning.dir/flags.make
src/CMakeFiles/skinning.dir/bone_geometry.cc.o: ../src/bone_geometry.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/skinning.dir/bone_geometry.cc.o"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/skinning.dir/bone_geometry.cc.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/bone_geometry.cc

src/CMakeFiles/skinning.dir/bone_geometry.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/skinning.dir/bone_geometry.cc.i"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/bone_geometry.cc > CMakeFiles/skinning.dir/bone_geometry.cc.i

src/CMakeFiles/skinning.dir/bone_geometry.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/skinning.dir/bone_geometry.cc.s"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/bone_geometry.cc -o CMakeFiles/skinning.dir/bone_geometry.cc.s

src/CMakeFiles/skinning.dir/gui.cc.o: src/CMakeFiles/skinning.dir/flags.make
src/CMakeFiles/skinning.dir/gui.cc.o: ../src/gui.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/skinning.dir/gui.cc.o"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/skinning.dir/gui.cc.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/gui.cc

src/CMakeFiles/skinning.dir/gui.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/skinning.dir/gui.cc.i"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/gui.cc > CMakeFiles/skinning.dir/gui.cc.i

src/CMakeFiles/skinning.dir/gui.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/skinning.dir/gui.cc.s"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/gui.cc -o CMakeFiles/skinning.dir/gui.cc.s

src/CMakeFiles/skinning.dir/main.cc.o: src/CMakeFiles/skinning.dir/flags.make
src/CMakeFiles/skinning.dir/main.cc.o: ../src/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/skinning.dir/main.cc.o"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/skinning.dir/main.cc.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/main.cc

src/CMakeFiles/skinning.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/skinning.dir/main.cc.i"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/main.cc > CMakeFiles/skinning.dir/main.cc.i

src/CMakeFiles/skinning.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/skinning.dir/main.cc.s"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/main.cc -o CMakeFiles/skinning.dir/main.cc.s

src/CMakeFiles/skinning.dir/procedure_geometry.cc.o: src/CMakeFiles/skinning.dir/flags.make
src/CMakeFiles/skinning.dir/procedure_geometry.cc.o: ../src/procedure_geometry.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/skinning.dir/procedure_geometry.cc.o"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/skinning.dir/procedure_geometry.cc.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/procedure_geometry.cc

src/CMakeFiles/skinning.dir/procedure_geometry.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/skinning.dir/procedure_geometry.cc.i"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/procedure_geometry.cc > CMakeFiles/skinning.dir/procedure_geometry.cc.i

src/CMakeFiles/skinning.dir/procedure_geometry.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/skinning.dir/procedure_geometry.cc.s"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/procedure_geometry.cc -o CMakeFiles/skinning.dir/procedure_geometry.cc.s

src/CMakeFiles/skinning.dir/render_pass.cc.o: src/CMakeFiles/skinning.dir/flags.make
src/CMakeFiles/skinning.dir/render_pass.cc.o: ../src/render_pass.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/skinning.dir/render_pass.cc.o"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/skinning.dir/render_pass.cc.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/render_pass.cc

src/CMakeFiles/skinning.dir/render_pass.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/skinning.dir/render_pass.cc.i"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/render_pass.cc > CMakeFiles/skinning.dir/render_pass.cc.i

src/CMakeFiles/skinning.dir/render_pass.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/skinning.dir/render_pass.cc.s"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/render_pass.cc -o CMakeFiles/skinning.dir/render_pass.cc.s

src/CMakeFiles/skinning.dir/shader_uniform.cc.o: src/CMakeFiles/skinning.dir/flags.make
src/CMakeFiles/skinning.dir/shader_uniform.cc.o: ../src/shader_uniform.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/skinning.dir/shader_uniform.cc.o"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/skinning.dir/shader_uniform.cc.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/shader_uniform.cc

src/CMakeFiles/skinning.dir/shader_uniform.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/skinning.dir/shader_uniform.cc.i"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/shader_uniform.cc > CMakeFiles/skinning.dir/shader_uniform.cc.i

src/CMakeFiles/skinning.dir/shader_uniform.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/skinning.dir/shader_uniform.cc.s"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && /usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/src/shader_uniform.cc -o CMakeFiles/skinning.dir/shader_uniform.cc.s

# Object files for target skinning
skinning_OBJECTS = \
"CMakeFiles/skinning.dir/animation_loader_saver.cc.o" \
"CMakeFiles/skinning.dir/bone_geometry.cc.o" \
"CMakeFiles/skinning.dir/gui.cc.o" \
"CMakeFiles/skinning.dir/main.cc.o" \
"CMakeFiles/skinning.dir/procedure_geometry.cc.o" \
"CMakeFiles/skinning.dir/render_pass.cc.o" \
"CMakeFiles/skinning.dir/shader_uniform.cc.o"

# External object files for target skinning
skinning_EXTERNAL_OBJECTS =

bin/skinning: src/CMakeFiles/skinning.dir/animation_loader_saver.cc.o
bin/skinning: src/CMakeFiles/skinning.dir/bone_geometry.cc.o
bin/skinning: src/CMakeFiles/skinning.dir/gui.cc.o
bin/skinning: src/CMakeFiles/skinning.dir/main.cc.o
bin/skinning: src/CMakeFiles/skinning.dir/procedure_geometry.cc.o
bin/skinning: src/CMakeFiles/skinning.dir/render_pass.cc.o
bin/skinning: src/CMakeFiles/skinning.dir/shader_uniform.cc.o
bin/skinning: src/CMakeFiles/skinning.dir/build.make
bin/skinning: /usr/local/Cellar/glew/2.1.0_1/lib/libGLEW.a
bin/skinning: /usr/local/lib/libglfw.3.3.dylib
bin/skinning: /usr/local/Cellar/glew/2.1.0_1/lib/libGLEW.a
bin/skinning: libutgraphicsutil.a
bin/skinning: /opt/local/lib/libjpeg.dylib
bin/skinning: libpmdreader.a
bin/skinning: /usr/local/Cellar/glew/2.1.0_1/lib/libGLEW.a
bin/skinning: src/CMakeFiles/skinning.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable ../bin/skinning"
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/skinning.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/skinning.dir/build: bin/skinning

.PHONY : src/CMakeFiles/skinning.dir/build

src/CMakeFiles/skinning.dir/clean:
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src && $(CMAKE_COMMAND) -P CMakeFiles/skinning.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/skinning.dir/clean

src/CMakeFiles/skinning.dir/depend:
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rahulkrishnan/Documents/GitHub/gfx-final /Users/rahulkrishnan/Documents/GitHub/gfx-final/src /Users/rahulkrishnan/Documents/GitHub/gfx-final/build /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/src/CMakeFiles/skinning.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/skinning.dir/depend

