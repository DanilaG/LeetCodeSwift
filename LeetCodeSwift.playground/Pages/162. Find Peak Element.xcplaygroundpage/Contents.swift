final class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        let n = nums.count
        
        var left = 0
        var right = n - 1

        while left < right {
            let mead = left + (right - left) / 2
            let next = (mead + 1) % n
            
            if (nums[next] > nums[mead]) {
                left = next
            } else {
                right = mead
            }
        }
        return left
    }
}

Solution().findPeakElement([1,2,1,3,5,6,4])
