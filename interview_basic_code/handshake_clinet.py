import socket
import time

# 创建 socket 对象
client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# 获取本地主机名
host = socket.gethostname()
port = 8888

# 连接服务端
client_socket.connect((host, port))

# 向服务端发送消息
message = "Hello, Server!"
client_socket.send(message.encode('utf-8'))

# 接收服务端返回的消息
data = client_socket.recv(1024)
print("服务端返回的消息: %s" % data.decode('utf-8'))

# 关闭连接
client_socket.close()
