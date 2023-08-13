final class Solution {
    func validPartition(_ nums: [Int]) -> Bool {
        var lastResult = [true, false, nums[0] == nums[1]]
        var i = 2
        while i < nums.count && lastResult.contains(where: { $0 }) {
            let result = (lastResult[1] && (nums[i] == nums[i - 1])) ||
                (lastResult[0] && (nums[i] == nums[i - 1]) && nums[i] == nums[i - 2]) ||
                (lastResult[0] && (nums[i] == (nums[i - 1] + 1)) && (nums[i] == (nums[i - 2] + 2)))
            i += 1
            lastResult[0] = lastResult[1]
            lastResult[1] = lastResult[2]
            lastResult[2] = result
        }
        
        return lastResult.last!
    }
}

Solution().validPartition([4,4,4,5,6])
Solution().validPartition([1,1,1,2])
Solution().validPartition([1,1,1])
Solution().validPartition([1,1])
Solution().validPartition([1,2,3])
Solution().validPartition([1,2])
