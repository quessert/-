cmake_minimum_required(VERSION 3.28)
project(project C)


set(CMAKE_C_STANDARD 23)

#find_package(PkgConfig REQUIRED)
#pkg_check_modules(GTK4 REQUIRED gtk4)

add_executable(project src/main.c
        src/writedata.h
        src/writedata.c
        src/bus_utils.h
        src/bus_utils.c
        src/show_buses.c
        src/show_buses.h
        src/cancel_booking.c
        src/cancel_booking.h
        src/add_bus.c
        src/add_bus.h
        src/cancel_bus.c
        src/cancel_bus.h
        src/book_seat.c
        src/book_seat.h
        src/show_bookings.c
        src/show_bookings.h
        src/check_capacity.c
        src/check_capacity.h
        src/validate_time.c
        src/validate_time.h
        src/generateUniqueReservationNumber.c
        src/generateUniqueReservationNumber.h
        src/check_reservation_number_exists.c
        src/check_reservation_number_exists.h
        src/check_seat_exists.c
        src/check_seat_exists.h
)

#target_include_directories(project PRIVATE ${GTK4_INCLUDE_DIRS})
#target_compile_options(project PRIVATE ${GTK4_CFLAGS_OTHER})
#target_link_libraries(project ${GTK4_LIBRARIES})