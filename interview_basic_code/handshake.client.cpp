/*
 * @Author: Frank Chu
 * @Date: 2023-02-26 23:26:32
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-26 23:29:28
 * @FilePath: /leetcode/interview_basic_code/handshake.client.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */
#include <iostream>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>

int main() {
    int sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd == -1) {
        std::cout << "Failed to create socket." << std::endl;
        return 1;
    }

    struct sockaddr_in server_addr;
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    server_addr.sin_port = htons(8888);

    if (connect(sockfd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
        std::cout << "Failed to connect." << std::endl;
        return 1;
    }

    std::cout << "Connected to server." << std::endl;
    send(sockfd, "Hello, server!", 14, 0);
    char buffer[1024];
    int read_size = read(sockfd, buffer, 1024);
    if (read_size < 0) {
        std::cout << "Failed to receive data." << std::endl;
        return 1;
    }

    std::cout << "Data received: " << buffer << std::endl;

    close(sockfd);
    return 0;
}