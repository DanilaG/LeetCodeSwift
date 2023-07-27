final class Solution {
    func maxArrayValue(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.first! }
        
        var last = nums.last!
        var maxVal = last
        for i in (0..<(nums.count - 1)).reversed() {
            if nums[i] <= last {
                last += nums[i]
            } else {
                last = nums[i]
            }
            maxVal = max(maxVal, last)
        }
        
        return maxVal
    }
}

Solution().maxArrayValue([2,3,7,9,3])
Solution().maxArrayValue([5,3,3])
