# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /home/ubuntu/.local/share/JetBrains/Toolbox/apps/clion/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/ubuntu/.local/share/JetBrains/Toolbox/apps/clion/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/Desktop/pkgBuild/project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/project.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/project.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project.dir/flags.make

CMakeFiles/project.dir/main.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/main.c.o: /home/ubuntu/Desktop/pkgBuild/project/main.c
CMakeFiles/project.dir/main.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/project.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/main.c.o -MF CMakeFiles/project.dir/main.c.o.d -o CMakeFiles/project.dir/main.c.o -c /home/ubuntu/Desktop/pkgBuild/project/main.c

CMakeFiles/project.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/main.c > CMakeFiles/project.dir/main.c.i

CMakeFiles/project.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/main.c -o CMakeFiles/project.dir/main.c.s

CMakeFiles/project.dir/writedata.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/writedata.c.o: /home/ubuntu/Desktop/pkgBuild/project/writedata.c
CMakeFiles/project.dir/writedata.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/project.dir/writedata.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/writedata.c.o -MF CMakeFiles/project.dir/writedata.c.o.d -o CMakeFiles/project.dir/writedata.c.o -c /home/ubuntu/Desktop/pkgBuild/project/writedata.c

CMakeFiles/project.dir/writedata.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/writedata.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/writedata.c > CMakeFiles/project.dir/writedata.c.i

CMakeFiles/project.dir/writedata.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/writedata.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/writedata.c -o CMakeFiles/project.dir/writedata.c.s

CMakeFiles/project.dir/bus_utils.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/bus_utils.c.o: /home/ubuntu/Desktop/pkgBuild/project/bus_utils.c
CMakeFiles/project.dir/bus_utils.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/project.dir/bus_utils.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/bus_utils.c.o -MF CMakeFiles/project.dir/bus_utils.c.o.d -o CMakeFiles/project.dir/bus_utils.c.o -c /home/ubuntu/Desktop/pkgBuild/project/bus_utils.c

CMakeFiles/project.dir/bus_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/bus_utils.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/bus_utils.c > CMakeFiles/project.dir/bus_utils.c.i

CMakeFiles/project.dir/bus_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/bus_utils.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/bus_utils.c -o CMakeFiles/project.dir/bus_utils.c.s

CMakeFiles/project.dir/show_buses.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/show_buses.c.o: /home/ubuntu/Desktop/pkgBuild/project/show_buses.c
CMakeFiles/project.dir/show_buses.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/project.dir/show_buses.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/show_buses.c.o -MF CMakeFiles/project.dir/show_buses.c.o.d -o CMakeFiles/project.dir/show_buses.c.o -c /home/ubuntu/Desktop/pkgBuild/project/show_buses.c

CMakeFiles/project.dir/show_buses.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/show_buses.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/show_buses.c > CMakeFiles/project.dir/show_buses.c.i

CMakeFiles/project.dir/show_buses.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/show_buses.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/show_buses.c -o CMakeFiles/project.dir/show_buses.c.s

CMakeFiles/project.dir/cancel_booking.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/cancel_booking.c.o: /home/ubuntu/Desktop/pkgBuild/project/cancel_booking.c
CMakeFiles/project.dir/cancel_booking.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/project.dir/cancel_booking.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/cancel_booking.c.o -MF CMakeFiles/project.dir/cancel_booking.c.o.d -o CMakeFiles/project.dir/cancel_booking.c.o -c /home/ubuntu/Desktop/pkgBuild/project/cancel_booking.c

CMakeFiles/project.dir/cancel_booking.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/cancel_booking.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/cancel_booking.c > CMakeFiles/project.dir/cancel_booking.c.i

CMakeFiles/project.dir/cancel_booking.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/cancel_booking.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/cancel_booking.c -o CMakeFiles/project.dir/cancel_booking.c.s

CMakeFiles/project.dir/add_bus.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/add_bus.c.o: /home/ubuntu/Desktop/pkgBuild/project/add_bus.c
CMakeFiles/project.dir/add_bus.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/project.dir/add_bus.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/add_bus.c.o -MF CMakeFiles/project.dir/add_bus.c.o.d -o CMakeFiles/project.dir/add_bus.c.o -c /home/ubuntu/Desktop/pkgBuild/project/add_bus.c

CMakeFiles/project.dir/add_bus.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/add_bus.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/add_bus.c > CMakeFiles/project.dir/add_bus.c.i

CMakeFiles/project.dir/add_bus.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/add_bus.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/add_bus.c -o CMakeFiles/project.dir/add_bus.c.s

CMakeFiles/project.dir/cancel_bus.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/cancel_bus.c.o: /home/ubuntu/Desktop/pkgBuild/project/cancel_bus.c
CMakeFiles/project.dir/cancel_bus.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/project.dir/cancel_bus.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/cancel_bus.c.o -MF CMakeFiles/project.dir/cancel_bus.c.o.d -o CMakeFiles/project.dir/cancel_bus.c.o -c /home/ubuntu/Desktop/pkgBuild/project/cancel_bus.c

CMakeFiles/project.dir/cancel_bus.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/cancel_bus.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/cancel_bus.c > CMakeFiles/project.dir/cancel_bus.c.i

CMakeFiles/project.dir/cancel_bus.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/cancel_bus.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/cancel_bus.c -o CMakeFiles/project.dir/cancel_bus.c.s

CMakeFiles/project.dir/book_seat.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/book_seat.c.o: /home/ubuntu/Desktop/pkgBuild/project/book_seat.c
CMakeFiles/project.dir/book_seat.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/project.dir/book_seat.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/book_seat.c.o -MF CMakeFiles/project.dir/book_seat.c.o.d -o CMakeFiles/project.dir/book_seat.c.o -c /home/ubuntu/Desktop/pkgBuild/project/book_seat.c

CMakeFiles/project.dir/book_seat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/book_seat.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/book_seat.c > CMakeFiles/project.dir/book_seat.c.i

CMakeFiles/project.dir/book_seat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/book_seat.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/book_seat.c -o CMakeFiles/project.dir/book_seat.c.s

CMakeFiles/project.dir/show_bookings.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/show_bookings.c.o: /home/ubuntu/Desktop/pkgBuild/project/show_bookings.c
CMakeFiles/project.dir/show_bookings.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/project.dir/show_bookings.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/show_bookings.c.o -MF CMakeFiles/project.dir/show_bookings.c.o.d -o CMakeFiles/project.dir/show_bookings.c.o -c /home/ubuntu/Desktop/pkgBuild/project/show_bookings.c

CMakeFiles/project.dir/show_bookings.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/show_bookings.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/show_bookings.c > CMakeFiles/project.dir/show_bookings.c.i

CMakeFiles/project.dir/show_bookings.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/show_bookings.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/show_bookings.c -o CMakeFiles/project.dir/show_bookings.c.s

CMakeFiles/project.dir/check_capacity.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/check_capacity.c.o: /home/ubuntu/Desktop/pkgBuild/project/check_capacity.c
CMakeFiles/project.dir/check_capacity.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/project.dir/check_capacity.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/check_capacity.c.o -MF CMakeFiles/project.dir/check_capacity.c.o.d -o CMakeFiles/project.dir/check_capacity.c.o -c /home/ubuntu/Desktop/pkgBuild/project/check_capacity.c

CMakeFiles/project.dir/check_capacity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/check_capacity.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/check_capacity.c > CMakeFiles/project.dir/check_capacity.c.i

CMakeFiles/project.dir/check_capacity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/check_capacity.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/check_capacity.c -o CMakeFiles/project.dir/check_capacity.c.s

CMakeFiles/project.dir/validate_time.c.o: CMakeFiles/project.dir/flags.make
CMakeFiles/project.dir/validate_time.c.o: /home/ubuntu/Desktop/pkgBuild/project/validate_time.c
CMakeFiles/project.dir/validate_time.c.o: CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/project.dir/validate_time.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/project.dir/validate_time.c.o -MF CMakeFiles/project.dir/validate_time.c.o.d -o CMakeFiles/project.dir/validate_time.c.o -c /home/ubuntu/Desktop/pkgBuild/project/validate_time.c

CMakeFiles/project.dir/validate_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/project.dir/validate_time.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Desktop/pkgBuild/project/validate_time.c > CMakeFiles/project.dir/validate_time.c.i

CMakeFiles/project.dir/validate_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/project.dir/validate_time.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Desktop/pkgBuild/project/validate_time.c -o CMakeFiles/project.dir/validate_time.c.s

# Object files for target project
project_OBJECTS = \
"CMakeFiles/project.dir/main.c.o" \
"CMakeFiles/project.dir/writedata.c.o" \
"CMakeFiles/project.dir/bus_utils.c.o" \
"CMakeFiles/project.dir/show_buses.c.o" \
"CMakeFiles/project.dir/cancel_booking.c.o" \
"CMakeFiles/project.dir/add_bus.c.o" \
"CMakeFiles/project.dir/cancel_bus.c.o" \
"CMakeFiles/project.dir/book_seat.c.o" \
"CMakeFiles/project.dir/show_bookings.c.o" \
"CMakeFiles/project.dir/check_capacity.c.o" \
"CMakeFiles/project.dir/validate_time.c.o"

# External object files for target project
project_EXTERNAL_OBJECTS =

project: CMakeFiles/project.dir/main.c.o
project: CMakeFiles/project.dir/writedata.c.o
project: CMakeFiles/project.dir/bus_utils.c.o
project: CMakeFiles/project.dir/show_buses.c.o
project: CMakeFiles/project.dir/cancel_booking.c.o
project: CMakeFiles/project.dir/add_bus.c.o
project: CMakeFiles/project.dir/cancel_bus.c.o
project: CMakeFiles/project.dir/book_seat.c.o
project: CMakeFiles/project.dir/show_bookings.c.o
project: CMakeFiles/project.dir/check_capacity.c.o
project: CMakeFiles/project.dir/validate_time.c.o
project: CMakeFiles/project.dir/build.make
project: CMakeFiles/project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C executable project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project.dir/build: project
.PHONY : CMakeFiles/project.dir/build

CMakeFiles/project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project.dir/clean

CMakeFiles/project.dir/depend:
	cd /home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Desktop/pkgBuild/project /home/ubuntu/Desktop/pkgBuild/project /home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug /home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug /home/ubuntu/Desktop/pkgBuild/project/cmake-build-debug/CMakeFiles/project.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/project.dir/depend

