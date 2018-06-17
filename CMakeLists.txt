cmake_minimum_required (VERSION 2.6)
project (RadioPi)

set (RadioPi_VERSION_MAJOR 0)
set (RadioPi_VERSION_MINOR 1)

add_executable( RadioPi
	RadioPi.cxx
	RtlSdrConvenience.cxx
	)

configure_file (
	"${PROJECT_SOURCE_DIR}/RadioPiConfig.h.in"
	"${PROJECT_BINARY_DIR}/RadioPiConfig.h"
	)

include_directories(
	"${PROJECT_BINARY_DIR}"
	"/usr/include/libusb-1.0/"
	)

target_link_libraries(RadioPi -lpthread)
target_link_libraries(RadioPi -lusb-1.0)
target_link_libraries(RadioPi -lrtlsdr)

set( CMAKE_CXX_FLAGS "-fpermissive" )


