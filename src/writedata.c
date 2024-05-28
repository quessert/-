//
// Created by ubuntu on 24-4-24.
//
#include "writedata.h"

void write_data(const char *filename, const void *data, size_t size) {
    FILE *fp = fopen(filename, "ab"); // 打开档案以追加写入二进位数据
    if (fp == NULL) {
        //perror("Error opening file");
        exit(EXIT_FAILURE);
    }

    fwrite(data, size, 1, fp); // 写入二进位数据

    fclose(fp); // 关闭档案
}

