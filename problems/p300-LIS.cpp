/*
 * @Author: Frank Chu
 * @Date: 2022-12-27 18:34:45
 * @LastEditors: Frank Chu
 * @LastEditTime: 2022-12-27 18:51:13
 * @FilePath: /leetcode/problems/p300-LIS.cpp
 * @Description: 
 * 
 * Copyright (c) 2022 by Frank Chu, All Rights Reserved. 
 */

#include <iostream>
#include <vector>

class Solution {
public:
    int lengthOfLIS(std::vector<int>& nums) {
        int n = nums.size();
        if (n == 0) return 0;
        std::vector<int> dp(n, 1);
        int res = 1;
        for (int i = 1; i < n; ++i) {
            for (int j = 0; j < i; ++j) {
                if (nums[i] > nums[j]) {
                    dp[i] = std::max(dp[i], dp[j] + 1);
                }
            }
            res = std::max(res, dp[i]);
        }
        return res;
    }
};

int main() {
    Solution s;
    std::vector<int> nums = {10,9,2,5,3,7,101,18};
    std::cout << s.lengthOfLIS(nums) << std::endl;
    return 0;
}