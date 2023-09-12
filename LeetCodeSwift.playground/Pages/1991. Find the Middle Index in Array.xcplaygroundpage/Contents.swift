final class Solution {
    func findMiddleIndex(_ nums: [Int]) -> Int {
        var rightSum = nums.reduce(0, +)
        var leftSum = 0
        for i in 0..<nums.count {
            rightSum -= nums[i]
            guard leftSum != rightSum else { return i }
            leftSum += nums[i]
        }
        return -1
    }
}

Solution().findMiddleIndex([2,3,-1,8,4])
Solution().findMiddleIndex([1,-1,4])
Solution().findMiddleIndex([2,5])
