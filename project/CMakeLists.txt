cmake_minimum_required(VERSION 3.28)
project(project C)


set(CMAKE_C_STANDARD 23)

find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK4 REQUIRED gtk4)

add_executable(project main.c
        writedata.h
        writedata.c
        bus_utils.h
        bus_utils.c
        show_buses.c
        show_buses.h
        cancel_booking.c
        cancel_booking.h
        add_bus.c
        add_bus.h
        cancel_bus.c
        cancel_bus.h
        book_seat.c
        book_seat.h
        show_bookings.c
        show_bookings.h
        check_capacity.c
        check_capacity.h
)

target_include_directories(project PRIVATE ${GTK4_INCLUDE_DIRS})
target_compile_options(project PRIVATE ${GTK4_CFLAGS_OTHER})
target_link_libraries(project ${GTK4_LIBRARIES})