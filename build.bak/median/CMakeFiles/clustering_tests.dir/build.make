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
include median/CMakeFiles/clustering_tests.dir/depend.make

# Include the progress variables for this target.
include median/CMakeFiles/clustering_tests.dir/progress.make

# Include the compile flags for this target's objects.
include median/CMakeFiles/clustering_tests.dir/flags.make

median/CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.o: median/CMakeFiles/clustering_tests.dir/flags.make
median/CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.o: ../median/tests/clustering_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wg25r/pyCMT/gedlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object median/CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.o"
	cd /home/wg25r/pyCMT/gedlib/build/median && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.o -c /home/wg25r/pyCMT/gedlib/median/tests/clustering_tests.cpp

median/CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.i"
	cd /home/wg25r/pyCMT/gedlib/build/median && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wg25r/pyCMT/gedlib/median/tests/clustering_tests.cpp > CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.i

median/CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.s"
	cd /home/wg25r/pyCMT/gedlib/build/median && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wg25r/pyCMT/gedlib/median/tests/clustering_tests.cpp -o CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.s

# Object files for target clustering_tests
clustering_tests_OBJECTS = \
"CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.o"

# External object files for target clustering_tests
clustering_tests_EXTERNAL_OBJECTS =

../median/bin/clustering_tests: median/CMakeFiles/clustering_tests.dir/tests/clustering_tests.cpp.o
../median/bin/clustering_tests: median/CMakeFiles/clustering_tests.dir/build.make
../median/bin/clustering_tests: ../lib/libgxlgedlib.so
../median/bin/clustering_tests: median/CMakeFiles/clustering_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wg25r/pyCMT/gedlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../median/bin/clustering_tests"
	cd /home/wg25r/pyCMT/gedlib/build/median && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clustering_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
median/CMakeFiles/clustering_tests.dir/build: ../median/bin/clustering_tests

.PHONY : median/CMakeFiles/clustering_tests.dir/build

median/CMakeFiles/clustering_tests.dir/clean:
	cd /home/wg25r/pyCMT/gedlib/build/median && $(CMAKE_COMMAND) -P CMakeFiles/clustering_tests.dir/cmake_clean.cmake
.PHONY : median/CMakeFiles/clustering_tests.dir/clean

median/CMakeFiles/clustering_tests.dir/depend:
	cd /home/wg25r/pyCMT/gedlib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/median /home/wg25r/pyCMT/gedlib/build /home/wg25r/pyCMT/gedlib/build/median /home/wg25r/pyCMT/gedlib/build/median/CMakeFiles/clustering_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : median/CMakeFiles/clustering_tests.dir/depend

