final class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left < right {
            let m = left + (right - left) / 2
            nums[m] < target ? (left = m + 1) : (right = m)
        }
        return (nums[left] < target) ? (left + 1) : left
    }
}

Solution().searchInsert([1,3,5,6], 7)
