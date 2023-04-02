/*
 * @Author: Frank Chu
 * @Date: 2023-02-26 13:40:02
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-26 19:38:05
 * @FilePath: /leetcode/cpp/malloc_test.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */
#include <stdlib.h>

struct Student {
    char* name;
    
}

int main() {
    char* str = (char *) malloc(sizeof(char) * 15);
    auto f = [](int a) -> int {
        return a;
    };

    int ff(int a) {
        return a;
    }

    
    return 0;
}