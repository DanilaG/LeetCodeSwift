final class Solution {
    func minStartValue(_ nums: [Int]) -> Int {
        var minVal = 0
        var sum = 0
        for i in nums {
            sum += i
            minVal = min(minVal, sum)
        }
        return (minVal < 0) ? (-minVal + 1) : 1
    }
}

Solution().minStartValue([-3,2,-3,4,2])
Solution().minStartValue([1,2])
Solution().minStartValue([1,-2,-3])
