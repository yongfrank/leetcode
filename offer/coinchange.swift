func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var notes = Array(repeating: -1, count: amount + 1)
        notes[0] = 0
        
        for money in 1 ..< amount + 1 {
            for coinIndex in 0 ..< coins.count {
                if coins[coinIndex] <= money && notes[money - coins[coinIndex]] != -1 {
                    let currentPlan = notes[money - coins[coinIndex]] + 1
                    notes[money] = notes[money] == -1 ? currentPlan : min(notes[money], currentPlan)
                }
            }
        }
        print(notes)
        return notes[amount]
    }
    
    func coinChangeNotGoodAgain(_ coins: [Int], _ amount: Int) -> Int {
        let minMoney = coins.min()!
        var notes = Array(repeating: -1, count: amount + 1)
        notes[0] = 0

        for coin in coins {
            if (coin <= amount) {
                notes[coin] = 1
            }
        }

        if (minMoney > amount) { return -1 }
        
        for money in minMoney ..< amount + 1 {
            for makeUpMoney in minMoney ..< money {
                if notes[makeUpMoney] != -1 && notes[money - makeUpMoney] != -1 {
                    let currentPlan = notes[makeUpMoney] + notes[money - makeUpMoney]
                    notes[money] = notes[money] == -1 ? currentPlan : min(notes[money], currentPlan)
                }
            }
        }
        return notes[amount]
    }
//    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
//            if amount < 1 {
//                return 0
//            }
//            var dp = Array(repeating: 0, count: amount + 1)
//            for i in 1...amount {
//                var result = Int.max
//                for coin in coins {
//                    if i < coin {
//                        continue
//                    }
//                    if dp[i - coin] < 0 || dp[i - coin] >= result {
//                        continue
//                    }
//                    result = dp[i - coin]
//                }
//                if result == Int.max {
//                    dp[i] = -1
//                }else {
//                    dp[i] = result + 1
//                }
//            }
//            return dp[amount]
//        }
//    func coinChangeNotGood(_ coins: [Int], _ amount: Int) -> Int {
//        var amountOfCoin = 0
//        var amount = amount
//        var coins = coins
//        while amount > 0 && !coins.isEmpty {
//            if let max = coins.max() {
//                amountOfCoin += amount / max
//                coins.removeAll { $0 == max }
//                amount %= max
//            }
//        }
//        return amount == 0 ? amountOfCoin : -1
//    }
    
    func test() {
        print(coinChange([1, 2147483647], 0))
        print(coinChange([4], 2))
        print(coinChange([1], 1))
        print(coinChange([370,417,408,156,143,434,168,83,177,280,117], 9953))
        print(coinChange([1], 0), "expected 0")
        print(coinChange([1, 2, 5], 8))
    }