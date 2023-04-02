var mHeight: Int = 0
    var nWidth: Int = 0
    var wordLength: Int = 0
    var visited: [[Bool]] = []
    // visited[m, n]
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        self.mHeight = board[0].count
        self.nWidth = board.count
        self.wordLength = word.count
        self.visited = [[Bool]](repeating: [Bool](repeating: false, count: mHeight), count: nWidth)
        
        for i in 0 ..< nWidth {
            for j in 0 ..< mHeight {
                if dsf(board: board, indexAtX: i, indexAtY: j, wordTobeSearched: word, wordIndex: 0) {
                    return true
                }
            }
        }
        
        return false
    }
    
    func dsf(board: [[Character]], indexAtX i: Int, indexAtY j: Int, wordTobeSearched: String, wordIndex: Int) -> Bool {
        let indexForLetter = wordTobeSearched.index(wordTobeSearched.startIndex, offsetBy: wordIndex)

        if (
            i < 0 || j < 0 || i >= nWidth || j >= mHeight ||
            self.visited[i][j] ||
            board[i][j] != wordTobeSearched[indexForLetter]
        ) {
            return false
        }
        
        if (wordIndex == wordLength - 1) {
            return true
        }
        
        visited[i][j] = true
        
        let result = (
            dsf(board: board, indexAtX: i, indexAtY: j + 1, wordTobeSearched: wordTobeSearched, wordIndex: wordIndex + 1) ||
            dsf(board: board, indexAtX: i - 1, indexAtY: j, wordTobeSearched: wordTobeSearched, wordIndex: wordIndex + 1) ||
            dsf(board: board, indexAtX: i, indexAtY: j - 1, wordTobeSearched: wordTobeSearched, wordIndex: wordIndex + 1) ||
            dsf(board: board, indexAtX: i + 1, indexAtY: j, wordTobeSearched: wordTobeSearched, wordIndex: wordIndex + 1)
        )
        visited[i][j] = false
        
        return result
    }
    
    func testDSF() {
        print(exist([[Character("a")], [Character("b")]], "ab"))
    }