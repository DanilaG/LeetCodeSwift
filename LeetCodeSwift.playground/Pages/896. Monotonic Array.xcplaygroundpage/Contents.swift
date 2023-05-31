final class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        isIncreas(nums) || isDecreas(nums)
    }

    func isIncreas(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        for i in 1..<nums.count where nums[i - 1] > nums[i] {
            return false
        }
        return true
    }

    func isDecreas(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        for i in 1..<nums.count where nums[i - 1] < nums[i] {
            return false
        }
        return true
    }
}

Solution().isMonotonic([1,2,2,3])
Solution().isMonotonic([6,5,4,4])
Solution().isMonotonic([1,3,2])
