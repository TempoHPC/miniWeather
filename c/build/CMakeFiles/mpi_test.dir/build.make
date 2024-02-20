# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /scratch/app/cmake/3.23.2/bin/cmake

# The command to remove a file.
RM = /scratch/app/cmake/3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /scratch/cenapadrjsd/isabel.barboza/miniWeather/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build

# Include any dependencies generated for this target.
include CMakeFiles/mpi_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mpi_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mpi_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mpi_test.dir/flags.make

CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o: CMakeFiles/mpi_test.dir/flags.make
CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o: ../miniWeather_mpi.cpp
CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o: CMakeFiles/mpi_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o"
	/scratch/app/openmpi/4.1.2_gnu+cuda-11.2/bin/mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o -MF CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o.d -o CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o -c /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/miniWeather_mpi.cpp

CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.i"
	/scratch/app/openmpi/4.1.2_gnu+cuda-11.2/bin/mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/miniWeather_mpi.cpp > CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.i

CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.s"
	/scratch/app/openmpi/4.1.2_gnu+cuda-11.2/bin/mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/miniWeather_mpi.cpp -o CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.s

# Object files for target mpi_test
mpi_test_OBJECTS = \
"CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o"

# External object files for target mpi_test
mpi_test_EXTERNAL_OBJECTS =

mpi_test: CMakeFiles/mpi_test.dir/miniWeather_mpi.cpp.o
mpi_test: CMakeFiles/mpi_test.dir/build.make
mpi_test: CMakeFiles/mpi_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mpi_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mpi_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mpi_test.dir/build: mpi_test
.PHONY : CMakeFiles/mpi_test.dir/build

CMakeFiles/mpi_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mpi_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mpi_test.dir/clean

CMakeFiles/mpi_test.dir/depend:
	cd /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /scratch/cenapadrjsd/isabel.barboza/miniWeather/c /scratch/cenapadrjsd/isabel.barboza/miniWeather/c /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build/CMakeFiles/mpi_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mpi_test.dir/depend

