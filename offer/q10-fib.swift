private var notes: [Int] = []
    func fib(_ n: Int) -> Int {
        notes = Array(repeating: -1, count: n + 1)
        
        return f(n)
    }
    
    func f(_ n: Int) -> Int {
        if (n <= 1) {
            notes[n] = n
            return n
        }
        
        if (notes[n] != -1) {
            return notes[n]
        }
        
        let sum = f(n - 1) + f(n - 2)
        notes[n] = sum % 1000000007
        return sum
    }
    
    func testSolution(_ n: Int) {
        print(fib(n))
    }