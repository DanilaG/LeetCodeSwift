final class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        let n = nums.count
        guard n > 0 else { return 0 }
        
        var right = -1
        var sum = 0
        
        while right < (n - 1), sum < target {
            right += 1
            sum += nums[right]
        }
        guard sum >= target else { return 0 }
        
        var best = right + 1
        var left = 0
        while left < (n - 1) {
            sum -= nums[left]
            left += 1
            guard sum < target else {
                best = right - left + 1
                continue
            }
            if right < (n - 1) {
                right += 1
                sum += nums[right]
            }
        }
        
        return best
    }
}

Solution().minSubArrayLen(7, [2,3,1,2,4,3])
Solution().minSubArrayLen(4, [1,4,4])
Solution().minSubArrayLen(11, [1,1,1,1,1,1,1,1])
