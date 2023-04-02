/*
 * @Author: Frank Chu
 * @Date: 2023-02-26 22:20:10
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-26 22:21:37
 * @FilePath: /leetcode/cpp/mutex_test.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */
#include <iostream>
#include <thread>
#include <mutex>

using namespace std;

mutex mutex1, mutex2;

void thread1() {
    mutex1.lock();
    cout << "Thread 1 acquired mutex1" << endl;
    this_thread::sleep_for(chrono::seconds(1));
    // cout << "Thread 1 waiting to acquire mutex2" << endl;
    // mutex2.lock();
    // cout << "Thread 1 acquired mutex2" << endl;
    mutex1.unlock();
    mutex2.unlock();
}

void thread2() {
    mutex2.lock();
    cout << "Thread 2 acquired mutex2" << endl;
    this_thread::sleep_for(chrono::seconds(1));
    cout << "Thread 2 waiting to acquire mutex1" << endl;
    mutex1.lock();
    cout << "Thread 2 acquired mutex1" << endl;
    mutex2.unlock();
    mutex1.unlock();
}

int main() {
    thread t1(thread1);
    thread t2(thread2);
    t1.join();
    t2.join();
    return 0;
}