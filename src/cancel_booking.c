//
// Created by ubuntu on 24-5-12.
//

#include <string.h>
#include <stdio.h>
#include "cancel_booking.h"
#include "bus_utils.h"
//#include "show_buses.h"

void cancel_booking() {
    int option;
    printf("请选取取消预约的方式：\n");
    printf("1. 透过班车编号和座位号取消\n");
    printf("2. 透过预约号取消\n");
    scanf("%d", &option);

    switch (option) {
        case 1:
            cancel_by_seat();
        break;
        case 2:
            cancel_by_reservation_number();
        break;
        default:
            printf("无效的选项。\n");
        break;
    }
}


void cancel_by_seat() {
    char bus_number[5];
    int seat_number;

    // 获取用户输入
    printf("请输入班车编号：");
    scanf("%s", bus_number);

    // 检视班车编号是否存在
    if (!check_bus_number_exists(bus_number)) {
        printf("班车编号不存在，请先添加班车资讯。\n");
        return; // 班车编号不存在，返回并不执行后续操作
    }

    printf("请输入要取消的座位号：");
    scanf("%d", &seat_number);

    // 打开预约档案来查找并删除预约记录
    FILE *fp = fopen("reservations.dat", "rb");
    FILE *fp_temp = fopen("reservations_temp.dat", "wb");
    if (fp == NULL || fp_temp == NULL) {
        perror("Error opening file");
        return;
    }

    Reservation reservation;
    int found = 0;
    while (fread(&reservation, sizeof(Reservation), 1, fp)) {
        if (strcmp(reservation.bus_number, bus_number) == 0 && reservation.seat_number == seat_number) {
            found = 1; // 找到匹配的预约记录
            continue; // 不将此记录写入临时档案
        }
        fwrite(&reservation, sizeof(Reservation), 1, fp_temp); // 将其他记录写入临时档案
    }

    fclose(fp);
    fclose(fp_temp);

    // 删除原始档案并重命名临时档案
    remove("reservations.dat");
    rename("reservations_temp.dat", "reservations.dat");

    if (found) {
        printf("预约已成功取消！\n");
    } else {
        printf("未找到匹配的预约记录。\n");
    }

    getchar(); // 消耗多余的换行符
    //getchar(); // 消耗多余的换行符
}

void cancel_by_reservation_number() {
    char reservation_number[13]; // 预约号为12位数字加上结束符'\0'

    // 获取用户输入的预约号
    printf("请输入预约号：");
    scanf("%s", reservation_number);

    // 打开预约档案来查找并删除预约记录
    FILE *fp = fopen("reservations.dat", "rb");
    FILE *fp_temp = fopen("reservations_temp.dat", "wb");
    if (fp == NULL || fp_temp == NULL) {
        perror("Error opening file");
        return;
    }

    Reservation reservation;
    int found = 0;
    while (fread(&reservation, sizeof(Reservation), 1, fp)) {
        if (strcmp(reservation.reservation_number, reservation_number) == 0) {
            found = 1; // 找到匹配的预约记录
            continue; // 不将此记录写入临时档案
        }
        fwrite(&reservation, sizeof(Reservation), 1, fp_temp); // 将其他记录写入临时档案
    }

    fclose(fp);
    fclose(fp_temp);

    // 删除原始档案并重命名临时档案
    remove("reservations.dat");
    rename("reservations_temp.dat", "reservations.dat");

    if (found) {
        printf("预约已成功取消！\n");
    } else {
        printf("未找到匹配的预约记录。\n");
    }

    getchar(); // 消耗多余的换行符
    //getchar(); // 消耗多余的换行符
}
