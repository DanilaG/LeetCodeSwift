final class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return -1 }
        
        var left = 0
        var right = nums.count - 1
        var mead = 0
        
        guard nums[left] != target else { return left }
        guard nums[right] != target else { return right }
        
        while (right - left) > 1 {
            mead = left + (right - left) / 2
            // print("\(left) \(mead) \(right)")
            guard nums[mead] != target else { return mead }
            
            if (nums[mead] > nums[right]) {
                if (target > nums[mead]) || (target < nums[right]) {
                    left = mead
                } else {
                    right = mead
                }
            } else if (nums[mead] < nums[left]) {
                if (target < nums[mead] || target > nums[left]) {
                    right = mead
                } else {
                    left = mead
                }
            } else {
                if target < nums[mead] {
                    right = mead
                } else {
                    left = mead
                }
            }
        }
        
        if nums[left] == target {
            return left
        }
        
        if nums[right] == target {
            return right
        }
        
        return -1
    }
}

Solution().search([4,5,6,7,0,1,2], 0)
Solution().search([4,5,6,7,0,1,2], 5)
Solution().search([4,5,6,7,8,1,2,3], 8)
Solution().search([5,1,2,3,4], 1)
