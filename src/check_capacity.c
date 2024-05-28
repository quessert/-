//
// Created by ubuntu on 24-5-12.
//

#include <string.h>
#include <stdio.h>
#include "bus_utils.h"
#include "check_capacity.h"



#define MAX_SEATS 43 //  MAX_BUSES 是系统中班车的最大数量


bool check_capacity(const char *bus_number) {
    // 首先检查班车编号是否存在
    if (!check_bus_number_exists(bus_number)) {
        printf("班车编号不存在。\n");
        return false;
    }

    // 打开预约档案来计算特定班车的乘客数量
    FILE *fp = fopen("reservations.dat", "rb");
    if (fp == NULL) {
        printf("预约档案为空或不存在，班车未满。\n");
        return true; // 档案为空或不存在，班车未满
    }

    int count = 0;
    Reservation reservation;
    while (fread(&reservation, sizeof(Reservation), 1, fp)) {
        if (strcmp(reservation.bus_number, bus_number) == 0) {
            count++;
        }
    }
    fclose(fp);

    // 如果乘客数量超过最大座位数，返回false
    if (count >= MAX_SEATS) {
        return false;
    }
    return true;
}
