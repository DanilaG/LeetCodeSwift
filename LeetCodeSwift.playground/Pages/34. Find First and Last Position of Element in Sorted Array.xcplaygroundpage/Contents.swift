import Foundation

final class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else {
            return [-1, -1]
        }
        
        var left = 0
        var right = nums.count - 1
        var current = (nums.count - 1) / 2
        
        while (right - left) > 1 {
            if nums[current] > target {
                right = current
            } else if nums[current] < target {
                left = current
            } else {
                return [
                    fiendLeftBorder(nums, left: left, right: current),
                    fiendRightBorder(nums, left: current, right: right)
                ]
            }
            
            current = left + (right - left) / 2
        }
        
        if nums[right] == target && nums[left] == target {
            return [left, right]
        }
        
        if nums[right] == target  {
            return [right, right]
        }
        
        if nums[left] == target  {
            return [left, left]
        }
        
        return [-1, -1]
    }
    
    private func fiendLeftBorder(_ nums: [Int], left leftInput: Int, right rightInput: Int) -> Int {
        var left = leftInput
        var right = rightInput
        var current = left + (right - left) / 2
        let target = nums[rightInput]
        
        while (right - left) > 1 {
            if nums[current] < target {
                left = current
            } else {
                right = current
            }
            current = left + (right - left) / 2
        }
        
        if nums[left] == target {
            return left
        }
        
        return right
    }
    
    private func fiendRightBorder(_ nums: [Int], left leftInput: Int, right rightInput: Int) -> Int {
        var left = leftInput
        var right = rightInput
        var current = left + (right - left) / 2
        let target = nums[leftInput]
        
        while (right - left) > 1 {
            if nums[current] > target {
                right = current
            } else {
                left = current
            }
            current = left + (right - left) / 2
        }
        
        if nums[right] == target {
            return right
        }
        
        return left
    }
}

let s = Solution()
s.searchRange([1,2,3,3,3,3,4,5,9], 3)
