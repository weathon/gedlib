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
include tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/depend.make

# Include the progress variables for this target.
include tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/flags.make

tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.o: tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/flags.make
tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.o: ../tests/unit_tests/src/catch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wg25r/pyCMT/gedlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.o"
	cd /home/wg25r/pyCMT/gedlib/build/tests/unit_tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.o -c /home/wg25r/pyCMT/gedlib/tests/unit_tests/src/catch.cpp

tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.i"
	cd /home/wg25r/pyCMT/gedlib/build/tests/unit_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wg25r/pyCMT/gedlib/tests/unit_tests/src/catch.cpp > CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.i

tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.s"
	cd /home/wg25r/pyCMT/gedlib/build/tests/unit_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wg25r/pyCMT/gedlib/tests/unit_tests/src/catch.cpp -o CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.s

tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.o: tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/flags.make
tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.o: ../tests/unit_tests/src/lsap_solver_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wg25r/pyCMT/gedlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.o"
	cd /home/wg25r/pyCMT/gedlib/build/tests/unit_tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.o -c /home/wg25r/pyCMT/gedlib/tests/unit_tests/src/lsap_solver_test.cpp

tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.i"
	cd /home/wg25r/pyCMT/gedlib/build/tests/unit_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wg25r/pyCMT/gedlib/tests/unit_tests/src/lsap_solver_test.cpp > CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.i

tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.s"
	cd /home/wg25r/pyCMT/gedlib/build/tests/unit_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wg25r/pyCMT/gedlib/tests/unit_tests/src/lsap_solver_test.cpp -o CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.s

# Object files for target lsap_solver_tests
lsap_solver_tests_OBJECTS = \
"CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.o" \
"CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.o"

# External object files for target lsap_solver_tests
lsap_solver_tests_EXTERNAL_OBJECTS =

../tests/unit_tests/bin/lsap_solver_tests: tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/catch.cpp.o
../tests/unit_tests/bin/lsap_solver_tests: tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/src/lsap_solver_test.cpp.o
../tests/unit_tests/bin/lsap_solver_tests: tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/build.make
../tests/unit_tests/bin/lsap_solver_tests: tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wg25r/pyCMT/gedlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../tests/unit_tests/bin/lsap_solver_tests"
	cd /home/wg25r/pyCMT/gedlib/build/tests/unit_tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lsap_solver_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/build: ../tests/unit_tests/bin/lsap_solver_tests

.PHONY : tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/build

tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/clean:
	cd /home/wg25r/pyCMT/gedlib/build/tests/unit_tests && $(CMAKE_COMMAND) -P CMakeFiles/lsap_solver_tests.dir/cmake_clean.cmake
.PHONY : tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/clean

tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/depend:
	cd /home/wg25r/pyCMT/gedlib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/tests/unit_tests /home/wg25r/pyCMT/gedlib/build /home/wg25r/pyCMT/gedlib/build/tests/unit_tests /home/wg25r/pyCMT/gedlib/build/tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unit_tests/CMakeFiles/lsap_solver_tests.dir/depend

