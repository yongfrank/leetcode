/*
 * @Author: Frank Chu
 * @Date: 2023-02-26 21:46:29
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-26 21:47:32
 * @FilePath: /leetcode/cpp/constructor_test.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */
#include <iostream>

using namespace std;

class Parent {
public:
    Parent() {
        cout << "Parent Constructor" << endl;
    }
    ~Parent() {
        cout << "parent desctruct" << endl;
    }
};

class Member {
public:
    Member() {
        cout << "Member Constructor" << endl;
    }
    ~Member() {
        cout << "member desctruct" << endl;
    }
};

class Child : public Parent {
public:
    Member m;
    Child() {
        cout << "Child Constructor" << endl;
    }
    ~Child() {
        cout << "child desctruct" << endl;
    }
};

int main() {
    Child c;
    return 0;
}