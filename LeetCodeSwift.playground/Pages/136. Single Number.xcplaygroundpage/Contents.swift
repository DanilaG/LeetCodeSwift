final class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for i in nums {
            result ^= i
        }
        return result
    }
}

Solution().singleNumber([2,2,1])
Solution().singleNumber([4,1,2,1,2])
Solution().singleNumber([1])
