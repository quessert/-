//
// Created by ubuntu on 24-5-12.
//

#include <stdio.h>
#include <string.h>
#include "add_bus.h"
#include "writedata.h"
#include "bus_utils.h"
#include "validate_time.h"

#define MAX_BUSES 10

Bus buses[MAX_BUSES];



void add_bus() {
    Bus new_bus; // 建立一个新的班车对象

    printf("请输入班车编号：");
    scanf("%s", new_bus.bus_number);

    printf("请输入司机姓名：");
    scanf("%s", new_bus.driver_name);

    do {
        printf("请输入出发时间（格式：HH:MM）：");
        scanf("%s", new_bus.departure_time);
    } while (!validate_time(new_bus.departure_time));

    // 输入到达时间，直到格式正确
    do {
        printf("请输入到达时间（格式：HH:MM）：");
        scanf("%s", new_bus.arrival_time);
    } while (!validate_time(new_bus.arrival_time));

    printf("请输入出发地：");
    scanf("%s", new_bus.from);

    printf("请输入目的地：");
    scanf("%s", new_bus.to);


    char data[255];
    sprintf(data, "班车编号: %s, 司机姓名: %s, 出发时间: %s, 到达时间: %s, 出发地: %s, 目的地: %s",
            new_bus.bus_number, new_bus.driver_name, new_bus.departure_time, new_bus.arrival_time, new_bus.from, new_bus.to);

    write_data("buses.dat", &new_bus, sizeof(new_bus));

    printf("班车已成功添加！\n");
    getchar();//移除多余的进入键位
}