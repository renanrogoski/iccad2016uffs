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
include test/CMakeFiles/TestBDD.x.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/TestBDD.x.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/TestBDD.x.dir/flags.make

test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o: test/CMakeFiles/TestBDD.x.dir/flags.make
test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o: test/test_bdd.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/renan/iccad2016uffs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o"
	cd /home/renan/iccad2016uffs/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o -c /home/renan/iccad2016uffs/test/test_bdd.cxx

test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestBDD.x.dir/test_bdd.cxx.i"
	cd /home/renan/iccad2016uffs/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/renan/iccad2016uffs/test/test_bdd.cxx > CMakeFiles/TestBDD.x.dir/test_bdd.cxx.i

test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestBDD.x.dir/test_bdd.cxx.s"
	cd /home/renan/iccad2016uffs/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/renan/iccad2016uffs/test/test_bdd.cxx -o CMakeFiles/TestBDD.x.dir/test_bdd.cxx.s

test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o.requires:

.PHONY : test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o.requires

test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o.provides: test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/TestBDD.x.dir/build.make test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o.provides.build
.PHONY : test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o.provides

test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o.provides.build: test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o


# Object files for target TestBDD.x
TestBDD_x_OBJECTS = \
"CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o"

# External object files for target TestBDD.x
TestBDD_x_EXTERNAL_OBJECTS =

test/TestBDD.x: test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o
test/TestBDD.x: test/CMakeFiles/TestBDD.x.dir/build.make
test/TestBDD.x: lib/libverilog_model.a
test/TestBDD.x: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
test/TestBDD.x: /usr/lib/x86_64-linux-gnu/libboost_system.so
test/TestBDD.x: test/CMakeFiles/TestBDD.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/renan/iccad2016uffs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TestBDD.x"
	cd /home/renan/iccad2016uffs/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestBDD.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/TestBDD.x.dir/build: test/TestBDD.x

.PHONY : test/CMakeFiles/TestBDD.x.dir/build

test/CMakeFiles/TestBDD.x.dir/requires: test/CMakeFiles/TestBDD.x.dir/test_bdd.cxx.o.requires

.PHONY : test/CMakeFiles/TestBDD.x.dir/requires

test/CMakeFiles/TestBDD.x.dir/clean:
	cd /home/renan/iccad2016uffs/test && $(CMAKE_COMMAND) -P CMakeFiles/TestBDD.x.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/TestBDD.x.dir/clean

test/CMakeFiles/TestBDD.x.dir/depend:
	cd /home/renan/iccad2016uffs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/renan/iccad2016uffs /home/renan/iccad2016uffs/test /home/renan/iccad2016uffs /home/renan/iccad2016uffs/test /home/renan/iccad2016uffs/test/CMakeFiles/TestBDD.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/TestBDD.x.dir/depend

