final class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var max = nums[0]
        var result = 0
        
        for element in nums[1...] {
            if element <= max {
                max += 1
                result += max - element
            } else {
                max = element
            }
        }
        
        return result
    }
}

Solution().minOperations([1, 1, 1])
Solution().minOperations([1,5,2,4,1])
Solution().minOperations([8])
