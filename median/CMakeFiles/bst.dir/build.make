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

# Utility rule file for bst.

# Include the progress variables for this target.
include median/CMakeFiles/bst.dir/progress.make

median/CMakeFiles/bst: median/bin/bst_init_letter
median/CMakeFiles/bst: median/bin/bst_query_letter
median/CMakeFiles/bst: median/bin/indexing_tests


bst: median/CMakeFiles/bst
bst: median/CMakeFiles/bst.dir/build.make

.PHONY : bst

# Rule to build all files generated by this target.
median/CMakeFiles/bst.dir/build: bst

.PHONY : median/CMakeFiles/bst.dir/build

median/CMakeFiles/bst.dir/clean:
	cd /home/wg25r/pyCMT/gedlib/median && $(CMAKE_COMMAND) -P CMakeFiles/bst.dir/cmake_clean.cmake
.PHONY : median/CMakeFiles/bst.dir/clean

median/CMakeFiles/bst.dir/depend:
	cd /home/wg25r/pyCMT/gedlib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/median /home/wg25r/pyCMT/gedlib /home/wg25r/pyCMT/gedlib/median /home/wg25r/pyCMT/gedlib/median/CMakeFiles/bst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : median/CMakeFiles/bst.dir/depend

