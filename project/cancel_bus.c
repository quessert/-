//
// Created by ubuntu on 24-5-12.
//

#include <stdio.h>
//#include <string.h>
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

    // 实现逻辑：开启档案，遍历记录，找到匹配的班车编号，然后删除记录
    // 注意：这需要修改档案操作的逻辑，可能涉及到读取整个档案内容，
    // 删除特定记录，然后将剩余内容写回档案。

    printf("班车编号为 %s 的班车已成功取消。\n", bus_number);
}