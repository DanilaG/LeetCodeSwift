final class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var result = [Int]()
        result.reserveCapacity(nums.count)
        for i in 0..<nums.count {
            result.insert(nums[i], at: index[i])
        }
        return result
    }
}

Solution().createTargetArray([0,1,2,3,4], [0,1,2,2,1])
