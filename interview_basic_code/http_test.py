'''
Author: Frank Chu
Date: 2023-02-26 23:54:43
LastEditors: Frank Chu
LastEditTime: 2023-02-27 06:43:25
FilePath: /leetcode/interview_basic_code/http_test.py
Description: 

Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
'''
import http.client
import ssl

conn = http.client.HTTPSConnection("www.apple.com", context=ssl.create_default_context())
conn.request("GET", "/")
res = conn.getresponse()
print(res.read().decode("utf-8"))
conn.close()