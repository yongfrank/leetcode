/*
 * @Author: Frank Chu
 * @Date: 2023-02-01 23:46:28
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-01 23:54:18
 * @FilePath: /leetcode/offer/q1.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */

#include <iostream>

class A
{
private:
    /* data */
    int value;
public:
    A(int n);
    A(const A& other);
    ~A();

    void Print();
};

A::A(int n)
{
    this->value = n;
}

A::A(const A& other) {
    this->value = other.value;
}

A::~A()
{
}

void A::Print() {
    std::cout << value << std::endl;
}

int main() {
    A a = 10;
    A b = a;
    b.Print();

    return 0;
}

