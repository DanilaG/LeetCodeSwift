final class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var counter = Array(repeating: 0, count: nums.count)
        counter[nums.count - 1] = 1
        
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            counter[i] = 1
            for j in (i + 1)..<nums.count where nums[j] > nums[i]  {
                counter[i] = max(counter[i], counter[j] + 1)
            }
        }

        return counter.max() ?? 0
    }
}

Solution().lengthOfLIS([10,9,2,5,3,7,101,18])
Solution().lengthOfLIS([0,1,0,3,2,3])
Solution().lengthOfLIS([7,7,7,7,7,7,7])
