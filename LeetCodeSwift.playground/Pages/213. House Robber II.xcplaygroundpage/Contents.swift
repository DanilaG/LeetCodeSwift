final class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        guard nums.count != 1 else { return nums[0] }
        return max(rob(nums, from: 0, to: nums.count - 1), rob(nums, from: 1, to: nums.count))
    }
    
    private func rob(_ nums: [Int], from start: Int, to end: Int) -> Int {
        guard start < end else { return 0 }
        
        var a = 0
        var b = 0
        var new = 0
        
        for i in start..<end {
            print(a, b, nums[i])
            new = max(a + nums[i], b)
            a = b
            b = new
        }
        
        return b
    }
}

Solution().rob([2,1,1,2,0])
