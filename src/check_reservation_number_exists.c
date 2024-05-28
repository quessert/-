//
// Created by ubuntu on 24-5-27.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "check_reservation_number_exists.h"
#include "bus_utils.h"

int check_reservation_number_exists(const char *reservationNumber) {
    FILE *fp = fopen("reservations.dat", "rb");
    if (fp == NULL) {
        //perror("Error opening file");
        return 0; // 档案开启失败，假设预约号不存在
    }

    Reservation reservation;
    while (fread(&reservation, sizeof(Reservation), 1, fp)) {
        if (strcmp(reservation.reservation_number, reservationNumber) == 0) {
            fclose(fp);
            return 1; // 预约号存在
        }
    }

    fclose(fp);
    return 0; // 预约号不存在
}
