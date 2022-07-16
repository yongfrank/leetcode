class Solution {
    func romanToInt(_ s: String) -> Int {
        /**
        > Solution().romanToInt("MCMXCIV")
        1994
          */
        var numberalMap: [String: Int] = ["I": 1, "V": 5, "X": 10, "L":50, "C": 100, "D": 500, "M": 1000]
        var result: Int = 0

        for index: Int in 0 ..< s.count {
            if index > 0 && numberalMap[s[index]] > numberalMap[s[index - 1]] {
                result += numberalMap[s[index]] - 2 * numberalMap[s[index - 1]]
            } else {
                result += numberalMap[s[index]]
            }
        }
    }

    
}

extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

class Solution2 {
    func romanToInt(_ s: String) -> Int {
        let arrReversed = Array(Array(s).reversed())
        var pre = Roman(rawValue: String(arrReversed.first!))!.num
        
        return arrReversed.dropFirst().reduce(pre) { partialResult, current in
            let num = Roman(rawValue: String(current))!.num
            var result = partialResult
            
            if num < pre {
                result -= num
            } else {
                result += num
            }
            pre = num
            return result
        }
    }
    enum Roman: String {
        case I, V, X, L, C, D, M
        
        var num: Int {
            switch self {
            case .I:
                return 1
            case .V:
                return 5
            case .X:
                return 10
            case .L:
                return 50
            case .C:
                return 100
            case .D:
                return 500
            case .M:
                return 1000
            }
        }
    }

}

