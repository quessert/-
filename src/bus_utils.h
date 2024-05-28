//
// Created by ubuntu on 24-4-24.
//

// bus_utils.h

#ifndef BUS_UTILS_H
#define BUS_UTILS_H

#define MAX_SEATS 43
#define MAX_BUSES 10

typedef struct {
    char bus_number[5];
    char driver_name[10];
    char driver_number[10];
    char departure_time[6];
    char arrival_time[6];
    char from[10];
    char to[10];
    char seat[MAX_SEATS][10];
} Bus;

typedef struct {
    char bus_number[5];
    int seat_number;
    char passenger_name[50];
    char passenger_phone[16];
    char reservation_number[13];
} Reservation;

int check_bus_number_exists(const char *bus_number);

#endif // BUS_UTILS_H
