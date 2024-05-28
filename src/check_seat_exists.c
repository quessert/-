//
// Created by ubuntu on 24-5-28.
//

#include <stdio.h>
#include <string.h>
#include "check_seat_exists.h"
#include "bus_utils.h"

// 檢查指定的班車編號和座位號是否已被預約
int check_seat_exists(const char *bus_number, int seat_number) {
    FILE *fp = fopen("reservations.dat", "rb");
    if (fp == NULL) {
        //perror("Error opening file");
        return 0; // 如果文件不存在，假设座位未被预约
    }

    Reservation reservation;
    while (fread(&reservation, sizeof(Reservation), 1, fp)) {
        if (strcmp(reservation.bus_number, bus_number) == 0 && reservation.seat_number == seat_number) {
            fclose(fp);
            return 1; // 座位已被预约
        }
    }

    fclose(fp);
    return 0; // 座位未被预约
}

