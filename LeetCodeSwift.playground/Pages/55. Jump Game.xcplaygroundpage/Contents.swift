final class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        let length = nums.count
        guard length > 1 else { return true }

        var maxJumpIndex = nums[0]
        var index = 1
                
        while index <= maxJumpIndex {
            guard index < (length - 1) else { return true }
            maxJumpIndex = max(maxJumpIndex, index + nums[index])
            index += 1
        }
        return false
    }
}

Solution().canJump([2,0])
