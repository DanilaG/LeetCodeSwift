final class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var results: [[Int]] = [[]]
        for i in 0..<nums.count {
            var new = results
            for j in 0..<new.count {
                results[j].append(nums[i])
            }
            results += new
        }
        return results
    }
}

Solution().subsets([0])
