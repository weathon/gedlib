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
CMAKE_BINARY_DIR = /home/wg25r/pyCMT/gedlib

# Include any dependencies generated for this target.
include median/CMakeFiles/aids_edit_iso_test.dir/depend.make

# Include the progress variables for this target.
include median/CMakeFiles/aids_edit_iso_test.dir/progress.make

# Include the compile flags for this target's objects.
include median/CMakeFiles/aids_edit_iso_test.dir/flags.make

median/CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.o: median/CMakeFiles/aids_edit_iso_test.dir/flags.make
median/CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.o: median/tests/aids_edit_iso_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wg25r/pyCMT/gedlib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object median/CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.o"
	cd /home/wg25r/pyCMT/gedlib/median && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.o -c /home/wg25r/pyCMT/gedlib/median/tests/aids_edit_iso_test.cpp

median/CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.i"
	cd /home/wg25r/pyCMT/gedlib/median && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wg25r/pyCMT/gedlib/median/tests/aids_edit_iso_test.cpp > CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.i

median/CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.s"
	cd /home/wg25r/pyCMT/gedlib/median && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wg25r/pyCMT/gedlib/median/tests/aids_edit_iso_test.cpp -o CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.s

# Object files for target aids_edit_iso_test
aids_edit_iso_test_OBJECTS = \
"CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.o"

# External object files for target aids_edit_iso_test
aids_edit_iso_test_EXTERNAL_OBJECTS =

median/bin/aids_edit_iso_test: median/CMakeFiles/aids_edit_iso_test.dir/tests/aids_edit_iso_test.cpp.o
median/bin/aids_edit_iso_test: median/CMakeFiles/aids_edit_iso_test.dir/build.make
median/bin/aids_edit_iso_test: lib/libgxlgedlib.so
median/bin/aids_edit_iso_test: median/CMakeFiles/aids_edit_iso_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wg25r/pyCMT/gedlib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/aids_edit_iso_test"
	cd /home/wg25r/pyCMT/gedlib/median && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aids_edit_iso_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
median/CMakeFiles/aids_edit_iso_test.dir/build: median/bin/aids_edit_iso_test

.PHONY : median/CMakeFiles/aids_edit_iso_test.dir/build

median/CMakeFiles/aids_edit_iso_test.dir/clean:
	cd /home/wg25r/pyCMT/gedlib/median && $(CMAKE_COMMAND) -P CMakeFiles/aids_edit_iso_test.dir/cmake_clean.cmake
.PHONY : median/CMakeFiles/aids_edit_iso_test.dir/clean

median/CMakeFiles/aids_edit_iso_test.dir/depend:
	cd /home/wg25r/pyCMT/gedlib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/median /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/median /home/wg25r/pyCMT/gedlib/median/CMakeFiles/aids_edit_iso_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : median/CMakeFiles/aids_edit_iso_test.dir/depend

