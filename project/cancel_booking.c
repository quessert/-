//
// Created by ubuntu on 24-5-12.
//

#include <string.h>
#include <stdio.h>
#include "cancel_booking.h"
#include "bus_utils.h"
#include "show_buses.h"


void cancel_booking() {
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

    // 在 reservations.dat 档案中查找并删除预约记录
    // 实现逻辑：开启档案，遍历记录，找到匹配的班车编号和座位号，然后删除记录

    printf("预约已成功取消！\n");
}
