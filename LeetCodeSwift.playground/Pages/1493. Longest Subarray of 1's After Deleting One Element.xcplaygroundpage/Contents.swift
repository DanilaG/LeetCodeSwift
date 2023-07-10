final class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        var left = 0
        var right = 0
        var containZero = nums.first! == 0
        var counter = containZero ? 0 : 1
        var maxCounter = counter
        
        
        while right < (nums.count - 1) {
            right += 1
            if nums[right] == 0 {
                if containZero {
                    maxCounter = max(counter, maxCounter)
                    while nums[left] != 0, left < right {
                        left += 1
                        counter -= 1
                    }
                    if left != right, nums[left] == 0 {
                        left += 1
                    }
                } else {
                    containZero = true
                }
            } else {
                counter += 1
            }
        }
        
        return max(maxCounter, counter) + (containZero ? 0 : -1)
    }
}

Solution().longestSubarray([1,1,0,1])
Solution().longestSubarray([0,1,1,1,0,1,1,0,1])
Solution().longestSubarray([1,1,1])
