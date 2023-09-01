final class Solution {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        let equal = nums.reduce(0, { $0 + ($1 == target ? 1 : 0) })
        guard equal > 0 else { return [] }
        let less = nums.reduce(0, { $0 + ($1 < target ? 1 : 0) })
        return Array(less..<(less + equal))
    }
}

Solution().targetIndices([1,2,5,2,3], 2)
Solution().targetIndices([1,2,5,2,3], 3)
Solution().targetIndices([1,2,5,2,3], 5)
