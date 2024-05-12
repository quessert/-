//
// Created by ubuntu on 24-5-12.
//


#include <stdio.h>
#include "bus_utils.h"
#include "show_buses.h"

void show_buses() {
    FILE *fp = fopen("buses.dat", "rb"); // 以二进位读取模式打开档案
    if (fp == NULL) {
        perror("Error opening file");
        return;
    }

    Bus bus;
    while (fread(&bus, sizeof(Bus), 1, fp)) { // 存取一个Bus记录
        printf("班车编号: %s, 司机姓名: %s, 出发时间: %s, 到达时间: %s, 出发地: %s, 目的地: %s\n",
               bus.bus_number, bus.driver_name, bus.departure_time, bus.arrival_time, bus.from, bus.to);
    }

    fclose(fp); // 关闭档案
}