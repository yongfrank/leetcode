import sys
n = int(sys.stdin.readline().strip())
names = []
for i in range(n):
    line = sys.stdin.readline().strip()
    names.append(line)

n = int(sys.stdin.readline().strip())
for i in range(n):
    line = sys.stdin.readline().strip()
    if line in names:
        print("YES")
    else:
        print("NO")

