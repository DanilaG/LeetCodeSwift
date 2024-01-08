final class Solution {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        var result = 0
        var dp = [[Int:Int]](repeating: [Int:Int](), count: nums.count)
        
        for i in 0..<nums.count {
            for j in 0..<i  {
                let diff = nums[i] - nums[j]
                let sequence = dp[j][diff, default: 0]
                dp[i][diff, default: 0] += sequence + 1
                result += sequence
            }
        }

        return result
    }
}

//Solution().numberOfArithmeticSlices([2,4,6,8,10])
Solution().numberOfArithmeticSlices([7,7,7,7,7])
