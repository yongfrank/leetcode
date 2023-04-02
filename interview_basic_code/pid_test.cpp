/*
 * @Author: Frank Chu
 * @Date: 2023-02-26 22:23:34
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-26 22:23:36
 * @FilePath: /leetcode/cpp/pid_test.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */
#include <iostream>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int fd_zero_read_one_write[2];
    pipe(fd_zero_read_one_write);

    pid_t pid = fork();

    // 这个程序创建了一个管道，并通过 fork() 函数创建了一个子进程。
    // 父进程向管道中写入了一条消息，子进程从管道中读取该消息并输出。
    // 需要注意的是，在父进程中，需要先关闭读端，否则子进程的读取操作会一直阻塞。
    // 在子进程中，需要先关闭写端，否则父进程的写入操作会一直阻塞。最后，父进程使用 wait() 
    // 函数等待子进程结束。

    if (pid == 0) {
        // 子进程
        close(fd_zero_read_one_write[1]); // 关闭写端
        char buf[1024];
        read(fd_zero_read_one_write[0], buf, sizeof(buf));
        std::cout << "子进程收到消息：" << buf << std::endl;
        close(fd_zero_read_one_write[0]);
    } else {
        // 父进程
        close(fd_zero_read_one_write[0]); // 关闭读端
        const char* msg = "Hello, world!";
        write(fd_zero_read_one_write[1], msg, strlen(msg));
        std::cout << "父进程发送消息：" << msg << std::endl;
        close(fd_zero_read_one_write[1]);
        wait(nullptr); // 等待子进程结束
    }

    return 0;
}