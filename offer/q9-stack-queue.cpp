/*
 * @Author: Frank Chu
 * @Date: 2023-02-10 12:45:05
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-10 13:03:01
 * @FilePath: /leetcode/offer/q9-stack-queue.cpp
 * @Description: 
 * 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */
#include <stack>
#include <iostream>

class CQueue {
public:

    std::stack<int> stack1;
    std::stack<int> stack2;

    CQueue() {
        
    }
    
    void appendTail(int value) {
        stack1.push(value);
    }
    
    int deleteHead() {
        if (!stack2.empty()) {
            int popValue = stack2.top();
            stack2.pop();
            return popValue;
        }

        if(!stack1.empty()) {
            while(!stack1.empty()) {
                stack2.push(stack1.top());
                stack1.pop();
            }
            int popValue = stack2.top();
            stack2.pop();
            return popValue;
        }

        return -1;
    }
};

int main() {
    std::stack<int> a;
    // a.push(2);
    std::cout << a.top();
}