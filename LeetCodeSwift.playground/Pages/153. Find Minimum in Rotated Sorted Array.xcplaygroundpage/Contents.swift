final class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while (right - left) > 1 {
            let mead = left + (right - left) / 2
            (nums[right] > nums[mead]) ? (right = mead) : (left = mead)
        }
        
        return min(nums[left], nums[right])
    }
}

Solution().findMin([4,5,6,7,0,1,2])
