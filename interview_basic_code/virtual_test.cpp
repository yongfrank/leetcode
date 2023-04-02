/*
 * @Author: Frank Chu
 * @Date: 2023-02-26 21:42:06
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-26 21:43:18
 * @FilePath: /leetcode/cpp/virtual_test.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */
#include <iostream>
using namespace std;

class Base {
public:
  virtual void func() {
    cout << "Base::func()" << endl;
  }
};

class Derived final : public Base {
public:
  void func() override {
    cout << "Derived::func()" << endl;
  }
};

int main() {
  Derived *b = new Derived();
  b->func();
  
  delete b;
  return 0;
}