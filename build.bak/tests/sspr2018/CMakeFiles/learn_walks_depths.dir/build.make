# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wg25r/pyCMT/gedlib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wg25r/pyCMT/gedlib/build

# Include any dependencies generated for this target.
include tests/sspr2018/CMakeFiles/learn_walks_depths.dir/depend.make

# Include the progress variables for this target.
include tests/sspr2018/CMakeFiles/learn_walks_depths.dir/progress.make

# Include the compile flags for this target's objects.
include tests/sspr2018/CMakeFiles/learn_walks_depths.dir/flags.make

tests/sspr2018/CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.o: tests/sspr2018/CMakeFiles/learn_walks_depths.dir/flags.make
tests/sspr2018/CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.o: ../tests/sspr2018/src/learn_walks_depths.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wg25r/pyCMT/gedlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/sspr2018/CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.o"
	cd /home/wg25r/pyCMT/gedlib/build/tests/sspr2018 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.o -c /home/wg25r/pyCMT/gedlib/tests/sspr2018/src/learn_walks_depths.cpp

tests/sspr2018/CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.i"
	cd /home/wg25r/pyCMT/gedlib/build/tests/sspr2018 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wg25r/pyCMT/gedlib/tests/sspr2018/src/learn_walks_depths.cpp > CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.i

tests/sspr2018/CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.s"
	cd /home/wg25r/pyCMT/gedlib/build/tests/sspr2018 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wg25r/pyCMT/gedlib/tests/sspr2018/src/learn_walks_depths.cpp -o CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.s

# Object files for target learn_walks_depths
learn_walks_depths_OBJECTS = \
"CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.o"

# External object files for target learn_walks_depths
learn_walks_depths_EXTERNAL_OBJECTS =

../tests/sspr2018/bin/learn_walks_depths: tests/sspr2018/CMakeFiles/learn_walks_depths.dir/src/learn_walks_depths.cpp.o
../tests/sspr2018/bin/learn_walks_depths: tests/sspr2018/CMakeFiles/learn_walks_depths.dir/build.make
../tests/sspr2018/bin/learn_walks_depths: ../lib/libgxlgedlib.so
../tests/sspr2018/bin/learn_walks_depths: tests/sspr2018/CMakeFiles/learn_walks_depths.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wg25r/pyCMT/gedlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../tests/sspr2018/bin/learn_walks_depths"
	cd /home/wg25r/pyCMT/gedlib/build/tests/sspr2018 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/learn_walks_depths.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/sspr2018/CMakeFiles/learn_walks_depths.dir/build: ../tests/sspr2018/bin/learn_walks_depths

.PHONY : tests/sspr2018/CMakeFiles/learn_walks_depths.dir/build

tests/sspr2018/CMakeFiles/learn_walks_depths.dir/clean:
	cd /home/wg25r/pyCMT/gedlib/build/tests/sspr2018 && $(CMAKE_COMMAND) -P CMakeFiles/learn_walks_depths.dir/cmake_clean.cmake
.PHONY : tests/sspr2018/CMakeFiles/learn_walks_depths.dir/clean

tests/sspr2018/CMakeFiles/learn_walks_depths.dir/depend:
	cd /home/wg25r/pyCMT/gedlib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/tests/sspr2018 /home/wg25r/pyCMT/gedlib/build /home/wg25r/pyCMT/gedlib/build/tests/sspr2018 /home/wg25r/pyCMT/gedlib/build/tests/sspr2018/CMakeFiles/learn_walks_depths.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/sspr2018/CMakeFiles/learn_walks_depths.dir/depend

