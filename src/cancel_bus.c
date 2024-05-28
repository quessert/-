//
// Created by ubuntu on 24-5-12.
//

#include <stdio.h>
#include <string.h>
#include "cancel_bus.h"
#include "bus_utils.h"

void cancel_bus() {
    char bus_number[5];
    printf("请输入要取消的班车编号：");
    scanf("%4s", bus_number);

    // 检查班车编号是否存在
    if (!check_bus_number_exists(bus_number)) {
        printf("班车编号不存在。\n");
        return; // 班车编号不存在，返回并不执行后续操作
    }

    // 打开预约档案来查找并删除与班车编号匹配的预约记录
    FILE *fp = fopen("reservations.dat", "rb");
    FILE *fp_temp = fopen("reservations_temp.dat", "wb");
    if (fp == NULL || fp_temp == NULL) {
        perror("Error opening file");
        return;
    }

    Reservation reservation;
    while (fread(&reservation, sizeof(Reservation), 1, fp)) {
        if (strcmp(reservation.bus_number, bus_number) != 0) {
            // 将不匹配的记录写入临时档案
            fwrite(&reservation, sizeof(Reservation), 1, fp_temp);
        }
    }

    fclose(fp);
    fclose(fp_temp);

    // 删除原始档案并重命名临时档案
    remove("reservations.dat");
    rename("reservations_temp.dat", "reservations.dat");

    printf("班车编号为 %s 的班车及其所有预约已成功取消。\n", bus_number);
    getchar();
}


// 实现逻辑：开启档案，遍历记录，找到匹配的班车编号，然后删除记录
// 注意：这需要修改档案操作的逻辑，可能涉及到读取整个档案内容，
// 删除特定记录，然后将剩余内容写回档案。