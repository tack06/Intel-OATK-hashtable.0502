# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/johnson/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/johnson/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/data/johnson/dl-workspace/BDTK/cpp/src/cider

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common

# Include any dependencies generated for this target.
include common/CMakeFiles/cider_hashtable.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include common/CMakeFiles/cider_hashtable.dir/compiler_depend.make

# Include the progress variables for this target.
include common/CMakeFiles/cider_hashtable.dir/progress.make

# Include the compile flags for this target's objects.
include common/CMakeFiles/cider_hashtable.dir/flags.make

common/CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o: common/CMakeFiles/cider_hashtable.dir/flags.make
common/CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o: interpreters/AggregationHashTable.cpp
common/CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o: common/CMakeFiles/cider_hashtable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object common/CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o"
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT common/CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o -MF CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o.d -o CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o -c /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/interpreters/AggregationHashTable.cpp

common/CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.i"
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/interpreters/AggregationHashTable.cpp > CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.i

common/CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.s"
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/interpreters/AggregationHashTable.cpp -o CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.s

common/CMakeFiles/cider_hashtable.dir/base/StringRef.o: common/CMakeFiles/cider_hashtable.dir/flags.make
common/CMakeFiles/cider_hashtable.dir/base/StringRef.o: base/StringRef.cpp
common/CMakeFiles/cider_hashtable.dir/base/StringRef.o: common/CMakeFiles/cider_hashtable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object common/CMakeFiles/cider_hashtable.dir/base/StringRef.o"
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT common/CMakeFiles/cider_hashtable.dir/base/StringRef.o -MF CMakeFiles/cider_hashtable.dir/base/StringRef.o.d -o CMakeFiles/cider_hashtable.dir/base/StringRef.o -c /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/base/StringRef.cpp

common/CMakeFiles/cider_hashtable.dir/base/StringRef.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cider_hashtable.dir/base/StringRef.i"
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/base/StringRef.cpp > CMakeFiles/cider_hashtable.dir/base/StringRef.i

common/CMakeFiles/cider_hashtable.dir/base/StringRef.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cider_hashtable.dir/base/StringRef.s"
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/base/StringRef.cpp -o CMakeFiles/cider_hashtable.dir/base/StringRef.s

# Object files for target cider_hashtable
cider_hashtable_OBJECTS = \
"CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o" \
"CMakeFiles/cider_hashtable.dir/base/StringRef.o"

# External object files for target cider_hashtable
cider_hashtable_EXTERNAL_OBJECTS =

common/libcider_hashtable.a: common/CMakeFiles/cider_hashtable.dir/interpreters/AggregationHashTable.o
common/libcider_hashtable.a: common/CMakeFiles/cider_hashtable.dir/base/StringRef.o
common/libcider_hashtable.a: common/CMakeFiles/cider_hashtable.dir/build.make
common/libcider_hashtable.a: common/CMakeFiles/cider_hashtable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libcider_hashtable.a"
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && $(CMAKE_COMMAND) -P CMakeFiles/cider_hashtable.dir/cmake_clean_target.cmake
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cider_hashtable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
common/CMakeFiles/cider_hashtable.dir/build: common/libcider_hashtable.a
.PHONY : common/CMakeFiles/cider_hashtable.dir/build

common/CMakeFiles/cider_hashtable.dir/clean:
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common && $(CMAKE_COMMAND) -P CMakeFiles/cider_hashtable.dir/cmake_clean.cmake
.PHONY : common/CMakeFiles/cider_hashtable.dir/clean

common/CMakeFiles/cider_hashtable.dir/depend:
	cd /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/data/johnson/dl-workspace/BDTK/cpp/src/cider /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common /media/data/johnson/dl-workspace/BDTK/cpp/src/cider/common/common/CMakeFiles/cider_hashtable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : common/CMakeFiles/cider_hashtable.dir/depend

