final class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 2 else { return nums.max()! }
        
        var last = nums[2] + nums[0]
        var firstAvailable = nums[1]
        var secondAvailable = nums[0]
        
        for i in 3..<nums.count {
            let sum = max(firstAvailable, secondAvailable) + nums[i]
            
            secondAvailable = firstAvailable
            firstAvailable = last
            last = sum
        }
        
        return max(last, firstAvailable)
    }
}

Solution().rob([0, 0])
// Solution().rob([9, 1, 1, 9])
