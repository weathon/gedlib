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
include tests/ijprai2020/CMakeFiles/train_subgraph.dir/depend.make

# Include the progress variables for this target.
include tests/ijprai2020/CMakeFiles/train_subgraph.dir/progress.make

# Include the compile flags for this target's objects.
include tests/ijprai2020/CMakeFiles/train_subgraph.dir/flags.make

tests/ijprai2020/CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.o: tests/ijprai2020/CMakeFiles/train_subgraph.dir/flags.make
tests/ijprai2020/CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.o: tests/ijprai2020/src/train_subgraph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wg25r/pyCMT/gedlib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/ijprai2020/CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.o"
	cd /home/wg25r/pyCMT/gedlib/tests/ijprai2020 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.o -c /home/wg25r/pyCMT/gedlib/tests/ijprai2020/src/train_subgraph.cpp

tests/ijprai2020/CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.i"
	cd /home/wg25r/pyCMT/gedlib/tests/ijprai2020 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wg25r/pyCMT/gedlib/tests/ijprai2020/src/train_subgraph.cpp > CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.i

tests/ijprai2020/CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.s"
	cd /home/wg25r/pyCMT/gedlib/tests/ijprai2020 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wg25r/pyCMT/gedlib/tests/ijprai2020/src/train_subgraph.cpp -o CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.s

# Object files for target train_subgraph
train_subgraph_OBJECTS = \
"CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.o"

# External object files for target train_subgraph
train_subgraph_EXTERNAL_OBJECTS =

tests/ijprai2020/bin/train_subgraph: tests/ijprai2020/CMakeFiles/train_subgraph.dir/src/train_subgraph.cpp.o
tests/ijprai2020/bin/train_subgraph: tests/ijprai2020/CMakeFiles/train_subgraph.dir/build.make
tests/ijprai2020/bin/train_subgraph: lib/libgxlgedlib.so
tests/ijprai2020/bin/train_subgraph: tests/ijprai2020/CMakeFiles/train_subgraph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wg25r/pyCMT/gedlib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/train_subgraph"
	cd /home/wg25r/pyCMT/gedlib/tests/ijprai2020 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/train_subgraph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/ijprai2020/CMakeFiles/train_subgraph.dir/build: tests/ijprai2020/bin/train_subgraph

.PHONY : tests/ijprai2020/CMakeFiles/train_subgraph.dir/build

tests/ijprai2020/CMakeFiles/train_subgraph.dir/clean:
	cd /home/wg25r/pyCMT/gedlib/tests/ijprai2020 && $(CMAKE_COMMAND) -P CMakeFiles/train_subgraph.dir/cmake_clean.cmake
.PHONY : tests/ijprai2020/CMakeFiles/train_subgraph.dir/clean

tests/ijprai2020/CMakeFiles/train_subgraph.dir/depend:
	cd /home/wg25r/pyCMT/gedlib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/tests/ijprai2020 /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/tests/ijprai2020 /home/wg25r/pyCMT/gedlib/tests/ijprai2020/CMakeFiles/train_subgraph.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/ijprai2020/CMakeFiles/train_subgraph.dir/depend

