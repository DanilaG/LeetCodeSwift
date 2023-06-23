final class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var maxFirst = nums[0]
        var maxSecond = 0
        for i in 1..<nums.count {
            if maxFirst < nums[i] {
                maxSecond = max(maxSecond, maxFirst)
                maxFirst = nums[i]
            } else {
                maxSecond = max(maxSecond, nums[i])
            }
        }
        return (maxSecond - 1) * (maxFirst - 1)
    }
}

Solution().maxProduct([3,4,5,2])
Solution().maxProduct([1,5,4,5])
Solution().maxProduct([3,7])
