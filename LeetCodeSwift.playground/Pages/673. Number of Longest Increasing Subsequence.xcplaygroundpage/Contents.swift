final class Solution {
    func findNumberOfLIS(_ nums: [Int]) -> Int {
        var maxWay = Array(repeating: 0, count: nums.count)
        maxWay[nums.count - 1] = 1
        var counter = Array(repeating: 1, count: nums.count)
        
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            maxWay[i] = 1
            for j in (i + 1)..<nums.count where nums[j] > nums[i]  {
                if maxWay[j] + 1 > maxWay[i] {
                    maxWay[i] = maxWay[j] + 1
                    counter[i] = counter[j]
                } else if maxWay[i] == (maxWay[j] + 1) {
                    counter[i] += counter[j]
                }
            }

        }

        let max = maxWay.max() ?? 0
        var result = 0
        for i in (0..<nums.count) where maxWay[i] == max {
            result += counter[i]
        }
        return result
    }
}

Solution().findNumberOfLIS([1,3,5,4,7])
Solution().findNumberOfLIS([2,2,2,2,2])
Solution().findNumberOfLIS([1,2,4,3,5,4,7,2])
