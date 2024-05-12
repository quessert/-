//
// Created by ubuntu on 24-4-24.
//

#ifndef BUS_UTILS_H
#define BUS_UTILS_H

#define MAX_SEATS 43
#define MAX_BUSES 10

typedef struct {
    char bus_number[5];
    char driver_name[10];
    char arrival_time[5];
    char departure_time[5];
    char from[10];
    char to[10];
    char seat[MAX_SEATS][10];
} Bus;

typedef struct {
    char bus_number[5];
    int seat_number;
    char passenger_name[50];
} Reservation;

int check_bus_number_exists(const char *bus_number);

#endif // BUS_UTILS_H
