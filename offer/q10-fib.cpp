/*
 * @Author: Frank Chu
 * @Date: 2023-02-10 14:12:53
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-10 14:17:50
 * @FilePath: /leetcode/offer/q10-fib.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */

#include <vector>

class Solution {
public:
    std::vector<int> notes;
    int fib(int n) { 
        for(int i = 0; i <= n; i++) {
            notes.push_back(-1);
        }
        return f(n);

    }

    int f(int n) {
        if ( n <= 1) { return n; }
        if (notes[n] != -1) {
            return notes[n];
        }
        int sum = (f(n - 1) + f(n - 2)) % 1000000007;
        notes[n] = sum;
        return sum;
    }
};