//
// Created by ubuntu on 24-4-24.
//

// bus_utils.c

#include <stdio.h>
#include <string.h>
#include "bus_utils.h"
#define MAX_SEATS 43

// 每行的格式为：班车编号 司机姓名 司机工号 出发时间 到达时间 出发地 到达地

int check_bus_number_exists(const char *bus_number) {
    FILE *fp = fopen("buses.dat", "rb"); // 以二进位读取模式打开档案
    if (fp == NULL) {
        //perror("Error opening file");
        return 0; // 档案开启失败，假设班车编号不存在
    }

    Bus bus;
    while (fread(&bus, sizeof(Bus), 1, fp)) { // 存取一个Bus记录
        if (strncmp(bus.bus_number, bus_number, sizeof(bus.bus_number)) == 0) {
            fclose(fp);
            return 1; // 找到班车编号，返回1表示存在
        }
    }

    fclose(fp);
    return 0; // 没有找到班车编号，返回0表示不存在
}
