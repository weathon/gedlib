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
include tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/depend.make

# Include the progress variables for this target.
include tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/progress.make

# Include the compile flags for this target's objects.
include tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/flags.make

tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.o: tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/flags.make
tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.o: tests/vldbj2020/src/test_best_methods.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wg25r/pyCMT/gedlib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.o"
	cd /home/wg25r/pyCMT/gedlib/tests/vldbj2020 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.o -c /home/wg25r/pyCMT/gedlib/tests/vldbj2020/src/test_best_methods.cpp

tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.i"
	cd /home/wg25r/pyCMT/gedlib/tests/vldbj2020 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wg25r/pyCMT/gedlib/tests/vldbj2020/src/test_best_methods.cpp > CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.i

tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.s"
	cd /home/wg25r/pyCMT/gedlib/tests/vldbj2020 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wg25r/pyCMT/gedlib/tests/vldbj2020/src/test_best_methods.cpp -o CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.s

# Object files for target vldbj_test_best_methods
vldbj_test_best_methods_OBJECTS = \
"CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.o"

# External object files for target vldbj_test_best_methods
vldbj_test_best_methods_EXTERNAL_OBJECTS =

tests/vldbj2020/bin/vldbj_test_best_methods: tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/src/test_best_methods.cpp.o
tests/vldbj2020/bin/vldbj_test_best_methods: tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/build.make
tests/vldbj2020/bin/vldbj_test_best_methods: lib/libgxlgedlib.so
tests/vldbj2020/bin/vldbj_test_best_methods: tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wg25r/pyCMT/gedlib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/vldbj_test_best_methods"
	cd /home/wg25r/pyCMT/gedlib/tests/vldbj2020 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vldbj_test_best_methods.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/build: tests/vldbj2020/bin/vldbj_test_best_methods

.PHONY : tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/build

tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/clean:
	cd /home/wg25r/pyCMT/gedlib/tests/vldbj2020 && $(CMAKE_COMMAND) -P CMakeFiles/vldbj_test_best_methods.dir/cmake_clean.cmake
.PHONY : tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/clean

tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/depend:
	cd /home/wg25r/pyCMT/gedlib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/tests/vldbj2020 /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/tests/vldbj2020 /home/wg25r/pyCMT/gedlib/tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/vldbj2020/CMakeFiles/vldbj_test_best_methods.dir/depend

