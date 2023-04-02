
class Solution {
    
    func cuttingRope(_ n: Int) -> Int {
        if n < 4 { return n - 1 }
        
        let expOfThree = n / 3
        let remainder = n % 3
        
        func powerOfLargeNumber(base: Int, exponent: Int) -> Int {
            var result = 1
            let modulus = 1000000007
            for _ in 0 ..< exponent {
                result = (result * base) % modulus
            }
            
            return result
        }
        
        if remainder == 0 {
            return powerOfLargeNumber(base: 3, exponent: expOfThree)
        } else if remainder == 1 {
            return powerOfLargeNumber(base: 3, exponent: expOfThree - 1) * 4 % 1000000007
        } else if remainder == 2 {
            return powerOfLargeNumber(base: 3, exponent: expOfThree) * 2 % 1000000007
        }
        
        return 1
    }
    
    func cuttingRopeExample(_ n: Int) -> Int {
        if n<4 {
            return n-1
        }
        if n==4 {
            return 4
        }
        var dp = [Int](repeating: 0, count: n+1)
        dp[0] = 0
        dp[1] = 1
        dp[2] = 2
        dp[3] = 3
        dp[4] = 4
        for i in 5...n {
            dp[i] = 3 * dp[i-3] % 1000000007
        }
        return dp[n]
    }
    
    func test() {
        print(cuttingRope(4))
        print(cuttingRope(5))
        print(cuttingRope(6))
        print(cuttingRope(10))
    }
}
