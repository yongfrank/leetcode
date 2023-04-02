#include <vector>
#include <unordered_map>
#include <iostream>
class Solution
{
private:
    /* data */
public:
    Solution(/* args */);
    ~Solution();
    int singleNumber(std::vector<int>& nums, int timesOccur = 3) {
        int answer = 0;
        for(int i = 0; i < 32; i++) {
            int counter = 0;
            for(auto &num: nums) {
                counter += num >> i & 1;
            }
            if(counter % timesOccur) { answer |= counter << i; }
        }
        return answer;
    }
    int singleNumber_simple(std::vector<int>& nums) {
        std::unordered_map<int, int> frequency;
        for(int num: nums) {
            frequency[num]++;
        }
        for(auto [num, occurrency]: frequency) {
            if(occurrency == 1) {
                return num;
            }
        }
        return -1;
    }
};

Solution::Solution(/* args */)
{
}

Solution::~Solution()
{
}

int main() {
    std::vector<int> a = {1, 2, 3, 1, 2, 0};
    std::cout << Solution().singleNumber(a);
}

// "cpp": "g++ $fullFileName -o $dir\"$fileNameWithoutExt\"\".out\" -W -Wall -O2 -std=c++17 && $dir\"$fileNameWithoutExt\"\".out\"",
