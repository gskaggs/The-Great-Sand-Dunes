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
include CMakeFiles/pmdreader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pmdreader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pmdreader.dir/flags.make

CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.o: CMakeFiles/pmdreader.dir/flags.make
CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.o: ../lib/pmdreader/bitmap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.o"
	/usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/lib/pmdreader/bitmap.cpp

CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.i"
	/usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/lib/pmdreader/bitmap.cpp > CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.i

CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.s"
	/usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/lib/pmdreader/bitmap.cpp -o CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.s

CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.o: CMakeFiles/pmdreader.dir/flags.make
CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.o: ../lib/pmdreader/mmdadapter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.o"
	/usr/local/Cellar/gcc/9.3.0/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.o -c /Users/rahulkrishnan/Documents/GitHub/gfx-final/lib/pmdreader/mmdadapter.cc

CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.i"
	/usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rahulkrishnan/Documents/GitHub/gfx-final/lib/pmdreader/mmdadapter.cc > CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.i

CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.s"
	/usr/local/Cellar/gcc/9.3.0/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rahulkrishnan/Documents/GitHub/gfx-final/lib/pmdreader/mmdadapter.cc -o CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.s

# Object files for target pmdreader
pmdreader_OBJECTS = \
"CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.o" \
"CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.o"

# External object files for target pmdreader
pmdreader_EXTERNAL_OBJECTS =

libpmdreader.a: CMakeFiles/pmdreader.dir/lib/pmdreader/bitmap.cpp.o
libpmdreader.a: CMakeFiles/pmdreader.dir/lib/pmdreader/mmdadapter.cc.o
libpmdreader.a: CMakeFiles/pmdreader.dir/build.make
libpmdreader.a: CMakeFiles/pmdreader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libpmdreader.a"
	$(CMAKE_COMMAND) -P CMakeFiles/pmdreader.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pmdreader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pmdreader.dir/build: libpmdreader.a

.PHONY : CMakeFiles/pmdreader.dir/build

CMakeFiles/pmdreader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pmdreader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pmdreader.dir/clean

CMakeFiles/pmdreader.dir/depend:
	cd /Users/rahulkrishnan/Documents/GitHub/gfx-final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rahulkrishnan/Documents/GitHub/gfx-final /Users/rahulkrishnan/Documents/GitHub/gfx-final /Users/rahulkrishnan/Documents/GitHub/gfx-final/build /Users/rahulkrishnan/Documents/GitHub/gfx-final/build /Users/rahulkrishnan/Documents/GitHub/gfx-final/build/CMakeFiles/pmdreader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pmdreader.dir/depend
