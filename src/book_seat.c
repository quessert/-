//
// Created by ubuntu on 24-5-12.
//

#include <stdio.h>
#include <string.h>
#include "bus_utils.h"
#include "book_seat.h"
#include "writedata.h"
#include "check_capacity.h"
#include "generateUniqueReservationNumber.h"
#include "check_reservation_number_exists.h"
#include "check_seat_exists.h"

void book_seat() {
    Reservation reservation;
    char reservationNumber[13]; // 预约号加上结束符

    // 获取用户输入
    printf("请输入班车编号：");
    scanf("%s", reservation.bus_number);

    // 检视班车编号是否存在
    if (!check_bus_number_exists(reservation.bus_number)) {
        printf("班车编号不存在，请先添加班车资讯。\n");
        return; // 班车编号不存在，返回并不执行后续操作
    }

    // 检视班车座位是否已满
    if (!check_capacity(reservation.bus_number)) {
        printf("警告：班车已满，无法预约座位。\n");
        return; // 如果满员，不执行预约
    }

    printf("请输入座位号（1-43）：");
    int seat_number;
    scanf("%d", &seat_number);

    // 检视座位号是否在有效范围内
    if (seat_number < 1 || seat_number > MAX_SEATS) {
        printf("无效的座位号。座位号必须在1到43之间。\n");
        return;
    }

    // 检视座位号是否已被预约
    if (check_seat_exists(reservation.bus_number, seat_number)) {
        printf("警告：座位号已被预约。\n");
        return; // 如果座位已被预约，不执行预约
    }

    // 座位号未被预约，将其赋值给reservation结构体
    reservation.seat_number = seat_number;

    printf("请输入乘客姓名：");
    scanf("%s", reservation.passenger_name);

    printf("请输入乘客手机号码「包括国码」：");
    scanf("%s", reservation.passenger_phone);

    do {
        generateUniqueReservationNumber(reservationNumber);             //建立预约号
    }
    while (check_reservation_number_exists(reservationNumber));

    // 将生成的预约号赋值给reservation结构体
    strcpy(reservation.reservation_number, reservationNumber);
    printf("您的预约号是: %s\n", reservationNumber);

    // 写入二进位制数据到 reservations.dat 档案
    write_data("reservations.dat", &reservation, sizeof(reservation));

    printf("预约成功！\n");
    getchar();//移除多余的进入键位
    getchar();//移除多余的进入键位
}