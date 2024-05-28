//
// Created by ubuntu on 24-5-27.
//

#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "generateUniqueReservationNumber.h"


void generateUniqueReservationNumber(char *reservationNumber) {
    constexpr char numbers[] = "0123456789";
    srand((unsigned int)time(NULL)); // 使用当前时间作为随机数生成的种子

    for (int i = 0; i < 12; ++i) {
        int index = rand() % 10; // 生成0到9之间的随机数
        reservationNumber[i] = numbers[index];
    }

    reservationNumber[12] = '\0'; // 結束字符串
}