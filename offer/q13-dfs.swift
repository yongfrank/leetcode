var mWidth = 0
    var nHeight = 0
    var kCantBeVisited = 0
    var visited = [[Bool]]()

    func movingCount(_ m: Int, _ n: Int, _ k: Int) -> Int {
        self.mWidth = m
        self.nHeight = n
        self.kCantBeVisited = k
        self.visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)

        return dfs(0, 0)
    }

    func dfs(_ x: Int, _ y: Int) -> Int {
        if (
            x < 0 || y < 0 || x >= self.mWidth || y >= self.nHeight || self.visited[x][y] || positionSum(x) + positionSum(y) > self.kCantBeVisited
        ) {
            return 0
        }

        self.visited[x][y] = true

        return 1 + dfs(x + 1, y) + dfs(x, y + 1) + dfs(x - 1, y) + dfs(x, y - 1)
    }

    func positionSum(_ data: Int) -> Int {
        var sum = 0
        var anotherData = data
        while anotherData != 0 {
            sum += anotherData % 10
            anotherData /= 10
        }
        return sum
    }

    func test() {
        print(movingCount(38, 15, 9))
    }