'''
Author: Frank Chu
Date: 2023-02-26 22:35:43
LastEditors: Frank Chu
LastEditTime: 2023-02-26 23:19:56
FilePath: /leetcode/interview_basic_code/handshake_server.py
Description: 

Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
'''
import socket

# https://stackoverflow.com/questions/1593946/what-is-af-inet-and-why-do-i-need-it
# AF_INET is an address family that is used to designate the type of addresses 
# that your socket can communicate with (in this case, Internet Protocol v4 addresses)
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host = socket.gethostname()
port = 8888

server_socket.bind((host, port))
server_socket.listen(5)

while True:
    client_socket, client_address = server_socket.accept()

    print("client address", str(client_address))

    data = client_socket.recv(1024)
    print(data.decode("utf-8"))

    response = "welcome to server"
    print("send", response.encode('utf-8'))
    client_socket.send(response.encode('utf-8'))
    

server_socket.close()
