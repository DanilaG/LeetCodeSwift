final class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var picked = Array(repeating: false, count: nums.count)
        return permute(nums, &picked)
    }
    
    private func permute(_ nums: [Int], _ picked: inout [Bool]) -> [[Int]] {
        var result = [[Int]]()
        for i in 0..<nums.count where !picked[i] {
            picked[i] = true
            let other = permute(nums, &picked)
            picked[i] = false
            for arr in other {
                result.append([nums[i]] + arr)
            }
        }
        return result.isEmpty ? [[Int]]([[]]) : result
    }
}

Solution().permute([1,2,3])
Solution().permute([0,1])
Solution().permute([1])
