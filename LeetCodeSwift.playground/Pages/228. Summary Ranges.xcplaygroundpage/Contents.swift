final class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        var result: [String] = []
        var start = nums.first!
        var end = nums.first!
        for i in 1..<nums.count {
            guard (nums[i] - end) > 1 else {
                end = nums[i]
                continue
            }

            result.append(
                start == end ? "\(start)" : "\(start)->\(end)"
            )
            start = nums[i]
            end = nums[i]
        }

        result.append(
            start == end ? "\(start)" : "\(start)->\(end)"
        )

        return result
    }
}

Solution().summaryRanges([0,1,2,4,5,7])
Solution().summaryRanges([0,2,3,4,6,8,9])
Solution().summaryRanges([0])
Solution().summaryRanges([0, 5])
Solution().summaryRanges([])
