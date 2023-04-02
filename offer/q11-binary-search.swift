func minArray(_ numbers: [Int]) -> Int {
        if numbers.count == 1 {
            return numbers[0]
        }
        
        var leftIndex = 0
        var rightIndex = numbers.count - 1
        
        while leftIndex < rightIndex {
            if numbers[leftIndex] < numbers[rightIndex] {
                return numbers[leftIndex]
            }
            
            var midIndex: Int = (leftIndex + rightIndex) / 2
            if numbers[midIndex] > numbers[leftIndex] {
                leftIndex = midIndex + 1
            } else if numbers[midIndex] < numbers[leftIndex] {
                rightIndex = midIndex
            } else {
                leftIndex += 1
            }
        }
        
        return numbers[leftIndex]
    }