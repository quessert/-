//
// Created by ubuntu on 24-5-12.
//

#include <stdio.h>
//#include <string.h>
#include "bus_utils.h"
#include "book_seat.h"
#include "writedata.h"
#include "check_capacity.h"

void book_seat() {
    Reservation reservation;

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

    printf("请输入座位号：");
    scanf("%d", &reservation.seat_number);

    printf("请输入乘客姓名：");
    scanf("%s", reservation.passenger_name);

    // 写入二进位制数据到 reservations.dat 档案
    write_data("reservations.dat", &reservation, sizeof(reservation));

    printf("预约成功！\n");
}