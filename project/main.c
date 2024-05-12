//
// Created by ubuntu on 24-3-14.
//
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <gtk/gtk.h>

//#include "writedata.h"
//#include "bus_utils.h"
#include "show_buses.h"
#include "cancel_booking.h"
#include "add_bus.h"
#include "cancel_bus.h"
#include "book_seat.h"
#include "show_bookings.h"



//int num_buses = 0;


/*void book_seat() {
    // 实现取消预约的功能
}*/


/*void cancel_bus() {
    // 实现取消车辆的功能
}*/

/*void showing_booking() {
    // 实现显示预约的功能
}*/

int main() {
    int choice;

    while(1) {
        printf("班车预约系统\n");
        printf("1. 新增班车\n");
        printf("2. 预约座位\n");
        printf("3. 取消班车\n");
        printf("4. 取消预约\n");
        printf("5. 显示所有预约\n");
        printf("6. 显示所有班车\n");
        printf("7. 退出\n");
        printf("请选择操作：");

        char input[100]; // 移动变数 'input' 到内部作用域，用于存取用户输入的字符串
        // 使用 fgets 存取一行输入
        if (fgets(input, sizeof(input), stdin) == NULL) {
            printf("存取输入字元时发生错误。\n");
            continue;
        }

        // 检视输入是否只包含空白字符
        int isBlank = 1; // 假设输入只包含空白字元
        for (int i = 0; input[i] != '\0'; i++) {
            if (!isspace((unsigned char)input[i])) {
                isBlank = 0; // 发现非空白字符
                break;
            }
        }

        if (isBlank) {
            printf("无效的输入！请输入数字。\n");
            continue;
        }

        // 使用 sscanf 从 input 中解析数字字元
        if (sscanf(input, "%d", &choice) != 1) {
            printf("无效的输入！请输入数字。\n");
            continue;
        }

        // 根据 choice 执行相应操作
        switch(choice) {
            case 1:
                add_bus();
                break;
            case 2:
                book_seat();
                break;
            case 3:
                cancel_bus();
                break;
            case 4:
                cancel_booking();
                break;
            case 5:
                show_bookings();
                break;
            case 6:
                show_buses();
                break;
            case 7:
                exit(0);
            default:
                printf("无效的选择！请选择1-6之间的数字。\n");
        }
    }
}
