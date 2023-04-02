import string
import sys
n = int(sys.stdin.readline().strip())
user = {}
for i in range(n):
    line = sys.stdin.readline().strip()
    values = list(map(str, line.split()))
    user[values[0]] = {"score": int(values[1]), "time": int(values[2])}

n = int(sys.stdin.readline().strip())

values = []
for i in range(n):
    line = sys.stdin.readline().strip()
    values.append(list(map(int, line.split())))

for i in range(n):
    lhs = values[i][0]
    rhs = values[i][1]
    num = 0
    result = 0
    for name in user:
        # print("DEBUG: ", name, " score: ", user[name]["score"])
        if user[name]["time"] >= lhs and user[name]["time"] <= rhs:
            num += 1
            result += user[name]["score"]
    print(f"{num} {result}")


