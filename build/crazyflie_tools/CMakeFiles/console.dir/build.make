# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/joseph/other_research/crazyflie_ros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joseph/other_research/crazyflie_ros/build

# Include any dependencies generated for this target.
include crazyflie_tools/CMakeFiles/console.dir/depend.make

# Include the progress variables for this target.
include crazyflie_tools/CMakeFiles/console.dir/progress.make

# Include the compile flags for this target's objects.
include crazyflie_tools/CMakeFiles/console.dir/flags.make

crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o: crazyflie_tools/CMakeFiles/console.dir/flags.make
crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o: /home/joseph/other_research/crazyflie_ros/src/crazyflie_tools/src/console.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joseph/other_research/crazyflie_ros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o"
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/console.dir/src/console.cpp.o -c /home/joseph/other_research/crazyflie_ros/src/crazyflie_tools/src/console.cpp

crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/console.dir/src/console.cpp.i"
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joseph/other_research/crazyflie_ros/src/crazyflie_tools/src/console.cpp > CMakeFiles/console.dir/src/console.cpp.i

crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/console.dir/src/console.cpp.s"
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joseph/other_research/crazyflie_ros/src/crazyflie_tools/src/console.cpp -o CMakeFiles/console.dir/src/console.cpp.s

crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o.requires:

.PHONY : crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o.requires

crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o.provides: crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o.requires
	$(MAKE) -f crazyflie_tools/CMakeFiles/console.dir/build.make crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o.provides.build
.PHONY : crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o.provides

crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o.provides.build: crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o


# Object files for target console
console_OBJECTS = \
"CMakeFiles/console.dir/src/console.cpp.o"

# External object files for target console
console_EXTERNAL_OBJECTS =

/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_tools/console: crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_tools/console: crazyflie_tools/CMakeFiles/console.dir/build.make
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_tools/console: /home/joseph/other_research/crazyflie_ros/devel/lib/libcrazyflie_cpp.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_tools/console: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_tools/console: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_tools/console: crazyflie_tools/CMakeFiles/console.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joseph/other_research/crazyflie_ros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_tools/console"
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/console.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crazyflie_tools/CMakeFiles/console.dir/build: /home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_tools/console

.PHONY : crazyflie_tools/CMakeFiles/console.dir/build

crazyflie_tools/CMakeFiles/console.dir/requires: crazyflie_tools/CMakeFiles/console.dir/src/console.cpp.o.requires

.PHONY : crazyflie_tools/CMakeFiles/console.dir/requires

crazyflie_tools/CMakeFiles/console.dir/clean:
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_tools && $(CMAKE_COMMAND) -P CMakeFiles/console.dir/cmake_clean.cmake
.PHONY : crazyflie_tools/CMakeFiles/console.dir/clean

crazyflie_tools/CMakeFiles/console.dir/depend:
	cd /home/joseph/other_research/crazyflie_ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joseph/other_research/crazyflie_ros/src /home/joseph/other_research/crazyflie_ros/src/crazyflie_tools /home/joseph/other_research/crazyflie_ros/build /home/joseph/other_research/crazyflie_ros/build/crazyflie_tools /home/joseph/other_research/crazyflie_ros/build/crazyflie_tools/CMakeFiles/console.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crazyflie_tools/CMakeFiles/console.dir/depend

