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
include app/CMakeFiles/aleatory_simulate_graph.x.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/aleatory_simulate_graph.x.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/aleatory_simulate_graph.x.dir/flags.make

app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o: app/CMakeFiles/aleatory_simulate_graph.x.dir/flags.make
app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o: app/aleatory_simulate_graph.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/renan/iccad2016uffs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o"
	cd /home/renan/iccad2016uffs/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o -c /home/renan/iccad2016uffs/app/aleatory_simulate_graph.cxx

app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.i"
	cd /home/renan/iccad2016uffs/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/renan/iccad2016uffs/app/aleatory_simulate_graph.cxx > CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.i

app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.s"
	cd /home/renan/iccad2016uffs/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/renan/iccad2016uffs/app/aleatory_simulate_graph.cxx -o CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.s

app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o.requires:

.PHONY : app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o.requires

app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o.provides: app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o.requires
	$(MAKE) -f app/CMakeFiles/aleatory_simulate_graph.x.dir/build.make app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o.provides.build
.PHONY : app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o.provides

app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o.provides.build: app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o


# Object files for target aleatory_simulate_graph.x
aleatory_simulate_graph_x_OBJECTS = \
"CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o"

# External object files for target aleatory_simulate_graph.x
aleatory_simulate_graph_x_EXTERNAL_OBJECTS =

app/aleatory_simulate_graph.x: app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o
app/aleatory_simulate_graph.x: app/CMakeFiles/aleatory_simulate_graph.x.dir/build.make
app/aleatory_simulate_graph.x: app/libverilog_parser.a
app/aleatory_simulate_graph.x: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
app/aleatory_simulate_graph.x: /usr/lib/x86_64-linux-gnu/libboost_system.so
app/aleatory_simulate_graph.x: app/CMakeFiles/aleatory_simulate_graph.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/renan/iccad2016uffs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable aleatory_simulate_graph.x"
	cd /home/renan/iccad2016uffs/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aleatory_simulate_graph.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/aleatory_simulate_graph.x.dir/build: app/aleatory_simulate_graph.x

.PHONY : app/CMakeFiles/aleatory_simulate_graph.x.dir/build

app/CMakeFiles/aleatory_simulate_graph.x.dir/requires: app/CMakeFiles/aleatory_simulate_graph.x.dir/aleatory_simulate_graph.cxx.o.requires

.PHONY : app/CMakeFiles/aleatory_simulate_graph.x.dir/requires

app/CMakeFiles/aleatory_simulate_graph.x.dir/clean:
	cd /home/renan/iccad2016uffs/app && $(CMAKE_COMMAND) -P CMakeFiles/aleatory_simulate_graph.x.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/aleatory_simulate_graph.x.dir/clean

app/CMakeFiles/aleatory_simulate_graph.x.dir/depend:
	cd /home/renan/iccad2016uffs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/renan/iccad2016uffs /home/renan/iccad2016uffs/app /home/renan/iccad2016uffs /home/renan/iccad2016uffs/app /home/renan/iccad2016uffs/app/CMakeFiles/aleatory_simulate_graph.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/aleatory_simulate_graph.x.dir/depend

