final class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var taken = [Bool](repeating: false, count: nums.count)
        var way = [Int]()
        return Array(take(nums.sorted(), &taken, &way))
    }
    
    private func take(_ nums: [Int], _ taken: inout [Bool], _ way: inout [Int]) -> [[Int]] {
        guard way.count != taken.count else {
            return [way]
        }
        
        var result = [[Int]]()
        
        for i in 0..<nums.count {
            if !taken[i] {
                if i > 0 && nums[i] == nums[i - 1] && taken[i - 1] {
                    continue
                }
                taken[i] = true
                way.append(nums[i])
                result += take(nums, &taken, &way)
                way.removeLast()
                taken[i] = false
            }
        }
        return result
    }
}

Solution().permuteUnique([1,2,1])
