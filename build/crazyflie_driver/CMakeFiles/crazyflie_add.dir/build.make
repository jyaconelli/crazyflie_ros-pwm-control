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
include crazyflie_driver/CMakeFiles/crazyflie_add.dir/depend.make

# Include the progress variables for this target.
include crazyflie_driver/CMakeFiles/crazyflie_add.dir/progress.make

# Include the compile flags for this target's objects.
include crazyflie_driver/CMakeFiles/crazyflie_add.dir/flags.make

crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o: crazyflie_driver/CMakeFiles/crazyflie_add.dir/flags.make
crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o: /home/joseph/other_research/crazyflie_ros/src/crazyflie_driver/src/crazyflie_add.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joseph/other_research/crazyflie_ros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o"
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_driver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o -c /home/joseph/other_research/crazyflie_ros/src/crazyflie_driver/src/crazyflie_add.cpp

crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.i"
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joseph/other_research/crazyflie_ros/src/crazyflie_driver/src/crazyflie_add.cpp > CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.i

crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.s"
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joseph/other_research/crazyflie_ros/src/crazyflie_driver/src/crazyflie_add.cpp -o CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.s

crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o.requires:

.PHONY : crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o.requires

crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o.provides: crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o.requires
	$(MAKE) -f crazyflie_driver/CMakeFiles/crazyflie_add.dir/build.make crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o.provides.build
.PHONY : crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o.provides

crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o.provides.build: crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o


# Object files for target crazyflie_add
crazyflie_add_OBJECTS = \
"CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o"

# External object files for target crazyflie_add
crazyflie_add_EXTERNAL_OBJECTS =

/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: crazyflie_driver/CMakeFiles/crazyflie_add.dir/build.make
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libtf.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libtf2_ros.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libactionlib.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libmessage_filters.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libroscpp.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libtf2.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/librosconsole.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/librostime.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /opt/ros/kinetic/lib/libcpp_common.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /home/joseph/other_research/crazyflie_ros/devel/lib/libcrazyflie_cpp.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
/home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add: crazyflie_driver/CMakeFiles/crazyflie_add.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joseph/other_research/crazyflie_ros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add"
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_driver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crazyflie_add.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crazyflie_driver/CMakeFiles/crazyflie_add.dir/build: /home/joseph/other_research/crazyflie_ros/devel/lib/crazyflie_driver/crazyflie_add

.PHONY : crazyflie_driver/CMakeFiles/crazyflie_add.dir/build

crazyflie_driver/CMakeFiles/crazyflie_add.dir/requires: crazyflie_driver/CMakeFiles/crazyflie_add.dir/src/crazyflie_add.cpp.o.requires

.PHONY : crazyflie_driver/CMakeFiles/crazyflie_add.dir/requires

crazyflie_driver/CMakeFiles/crazyflie_add.dir/clean:
	cd /home/joseph/other_research/crazyflie_ros/build/crazyflie_driver && $(CMAKE_COMMAND) -P CMakeFiles/crazyflie_add.dir/cmake_clean.cmake
.PHONY : crazyflie_driver/CMakeFiles/crazyflie_add.dir/clean

crazyflie_driver/CMakeFiles/crazyflie_add.dir/depend:
	cd /home/joseph/other_research/crazyflie_ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joseph/other_research/crazyflie_ros/src /home/joseph/other_research/crazyflie_ros/src/crazyflie_driver /home/joseph/other_research/crazyflie_ros/build /home/joseph/other_research/crazyflie_ros/build/crazyflie_driver /home/joseph/other_research/crazyflie_ros/build/crazyflie_driver/CMakeFiles/crazyflie_add.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crazyflie_driver/CMakeFiles/crazyflie_add.dir/depend

