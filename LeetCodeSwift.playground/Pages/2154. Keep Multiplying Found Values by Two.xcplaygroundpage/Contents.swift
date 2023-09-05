final class Solution {
    func findFinalValue(_ nums: [Int], _ original: Int) -> Int {
        let nums = Set(nums)
        var original = original
        while nums.contains(original) { original *= 2 }
        return original
    }
}

Solution().findFinalValue([5,3,6,1,12], 3)
Solution().findFinalValue([2,7,9], 4)
Solution().findFinalValue([8,19,4,2,15,3], 2)
