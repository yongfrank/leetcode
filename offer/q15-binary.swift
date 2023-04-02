class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var sum = 0
        var number = n
        while number != 0 {
            sum += number % 2
            number /= 2
        }
        return sum
    }
//    func hammingWeight(_ n: Int) -> Int {
//        var sum: Int = 0
//        var number = n
//        while number != 0 {
//            number = number & (number - 1)
//            sum += 1
//        }
//
//        return sum
//    }
    
    func test() {
        print(hammingWeight(11))
    }
}
