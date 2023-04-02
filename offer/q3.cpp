/*
 * @Author: Frank Chu
 * @Date: 2023-02-02 09:34:39
 * @LastEditors: Frank Chu
 * @LastEditTime: 2023-02-02 09:56:00
 * @FilePath: /leetcode/offer/q3.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name}, All Rights Reserved. 
 */

#include <vector>
#include <algorithm>

class Solution {
public:
    int findRepeatNumber(std::vector<int>& nums) {
        std::sort(nums.begin(), nums.end());
        int previous;
        for(int i = 0; i < nums.size(); i++) {
            if (i == 0) {
                previous = nums[i];
                i++;
            } else {
                previous = nums[i - 1];
            }
            int now = nums[i];
            if (now == previous) {
                return nums[i];
            }
        }
        return 0;
    }

    int findRepeatNumberHashMap(std::vector<int>& nums) {
        std::unordered_set<int> setOfNumbers;
        for(int i = 0; i < nums.size(); i++) {
            if(setOfNumbers.count(nums[i]) != 0) { return nums[i]; }
            setOfNumbers.insert(nums[i]);
        }
        return 0;
    }
};