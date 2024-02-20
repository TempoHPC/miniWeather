# CMake generated Testfile for 
# Source directory: /scratch/cenapadrjsd/isabel.barboza/miniWeather/c
# Build directory: /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(SERIAL_TEST "./check_output.sh" "./serial_test" "1e-13" "4.5e-5")
set_tests_properties(SERIAL_TEST PROPERTIES  _BACKTRACE_TRIPLES "/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/CMakeLists.txt;55;add_test;/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/CMakeLists.txt;0;")
add_test(MPI_TEST "./check_output.sh" "./mpi_test" "1e-13" "4.5e-5")
set_tests_properties(MPI_TEST PROPERTIES  _BACKTRACE_TRIPLES "/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/CMakeLists.txt;76;add_test;/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/CMakeLists.txt;0;")
add_test(OPENMP_TEST "./check_output.sh" "./openmp_test" "1e-13" "4.5e-5")
set_tests_properties(OPENMP_TEST PROPERTIES  _BACKTRACE_TRIPLES "/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/CMakeLists.txt;99;add_test;/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/CMakeLists.txt;0;")
