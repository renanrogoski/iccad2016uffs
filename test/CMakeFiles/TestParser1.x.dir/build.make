# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/renan/iccad2016uffs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/renan/iccad2016uffs

# Include any dependencies generated for this target.
include test/CMakeFiles/TestParser1.x.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/TestParser1.x.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/TestParser1.x.dir/flags.make

test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o: test/CMakeFiles/TestParser1.x.dir/flags.make
test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o: test/test_parser_1.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/renan/iccad2016uffs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o"
	cd /home/renan/iccad2016uffs/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o -c /home/renan/iccad2016uffs/test/test_parser_1.cxx

test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.i"
	cd /home/renan/iccad2016uffs/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/renan/iccad2016uffs/test/test_parser_1.cxx > CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.i

test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.s"
	cd /home/renan/iccad2016uffs/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/renan/iccad2016uffs/test/test_parser_1.cxx -o CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.s

test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o.requires:

.PHONY : test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o.requires

test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o.provides: test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/TestParser1.x.dir/build.make test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o.provides.build
.PHONY : test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o.provides

test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o.provides.build: test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o


# Object files for target TestParser1.x
TestParser1_x_OBJECTS = \
"CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o"

# External object files for target TestParser1.x
TestParser1_x_EXTERNAL_OBJECTS =

test/TestParser1.x: test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o
test/TestParser1.x: test/CMakeFiles/TestParser1.x.dir/build.make
test/TestParser1.x: lib/libverilog_model.a
test/TestParser1.x: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
test/TestParser1.x: /usr/lib/x86_64-linux-gnu/libboost_system.so
test/TestParser1.x: test/CMakeFiles/TestParser1.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/renan/iccad2016uffs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TestParser1.x"
	cd /home/renan/iccad2016uffs/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestParser1.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/TestParser1.x.dir/build: test/TestParser1.x

.PHONY : test/CMakeFiles/TestParser1.x.dir/build

test/CMakeFiles/TestParser1.x.dir/requires: test/CMakeFiles/TestParser1.x.dir/test_parser_1.cxx.o.requires

.PHONY : test/CMakeFiles/TestParser1.x.dir/requires

test/CMakeFiles/TestParser1.x.dir/clean:
	cd /home/renan/iccad2016uffs/test && $(CMAKE_COMMAND) -P CMakeFiles/TestParser1.x.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/TestParser1.x.dir/clean

test/CMakeFiles/TestParser1.x.dir/depend:
	cd /home/renan/iccad2016uffs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/renan/iccad2016uffs /home/renan/iccad2016uffs/test /home/renan/iccad2016uffs /home/renan/iccad2016uffs/test /home/renan/iccad2016uffs/test/CMakeFiles/TestParser1.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/TestParser1.x.dir/depend

