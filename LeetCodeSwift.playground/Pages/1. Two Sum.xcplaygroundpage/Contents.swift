final class Solution {
    func twoSum(_ unsortedNums: [Int], _ target: Int) -> [Int] {
        let nums = unsortedNums.sorted()
        var left = 0
        var right = nums.count - 1
        var diff = 0
        while left < right {
            diff = -target + nums[left] + nums[right]
            guard diff != 0 else {
                return [
                    unsortedNums.firstIndex(of: nums[left])!,
                    unsortedNums.lastIndex(of: nums[right])!
                ]
            }
            if diff < 0 {
                left += 1
            } else {
                right -= 1
            }
        }
        return [0, 0]
    }
}

//Solution().twoSum([2,7,11,15], 9)
//Solution().twoSum([3,2,4], 6)
// Solution().twoSum([3,3], 6)
Solution().twoSum([5,2,7,11,15], 16)
