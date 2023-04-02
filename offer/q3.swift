class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        nums.sort()
        for i in 0 ..< nums.count - 1 {
            if (nums[i] == nums[i + 1]) {
                return nums[i]
            }
        }
        return 0;
    }

    func findRepeatNumberHashMap(_ nums: [Int]) -> Int {
        var numSet = Set<Int>()

        for num in nums {
            if !numSet.insert(num).inserted {
                return num
            }
            // if numSet.contains(num) { return num }
            // numSet.insert(num)
        }
        return -1
    }
}