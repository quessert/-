//
// Created by ubuntu on 24-5-13.
//

#include <stdio.h>
#include "validate_time.h"

int validate_time(const char* input) {
    int hours, minutes;
    if (sscanf(input, "%d:%d", &hours, &minutes) != 2) {
        printf("请重新输入：\n");
        return 0; // 格式不正确
    }
    if (hours < 0 || hours >= 24 || minutes < 0 || minutes >= 60) {
        printf("请重新输入：\n");
        return 0; // 超出范围
    }
    return 1; // 验证通过
}

//VAILDATE_TIME_C