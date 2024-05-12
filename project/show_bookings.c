//
// Created by ubuntu on 24-5-12.
//

#include <stdio.h>
#include "show_bookings.h"
#include "bus_utils.h"

void show_bookings() {
    FILE *fp = fopen("reservations.dat", "rb"); // 打开档案以读取二进制数据
    if (fp == NULL) {
        perror("Error opening file");
        return;
    }

    Reservation reservation;
    while (fread(&reservation, sizeof(Reservation), 1, fp) == 1) {
        // 显示读取到的预约数据
        printf("班车编号: %s, 座位号: %d, 乘客姓名: %s\n",
               reservation.bus_number, reservation.seat_number, reservation.passenger_name);
    }

    fclose(fp); // 关闭档案
}