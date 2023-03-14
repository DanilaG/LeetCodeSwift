final class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var results: [[Int]] = [[]]
        
        var i = 0
        while i < nums.count {
            var new = results
            for j in 0..<new.count {
                new[j].append(nums[i])
            }
            results += new
            var next = i + 1
            while next < nums.count, nums[next] == nums[i] {
                for j in 0..<new.count {
                    new[j].append(nums[next])
                }
                results += new
                next += 1
            }
            i = next
        }
        return results
    }
}

Solution().subsetsWithDup([4,4,4,1,4])
