final class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            guard nums[right] != val else {
                right -= 1
                continue
            }
            
            guard nums[left] == val else {
                left += 1
                continue
            }
            
            nums.swapAt(left, right)
            right -= 1
            left += 1
        }
        
        return right + 1
    }
}

//var arr = [3,2,2,3]
//Solution().removeElement(&arr, 3)
var arr = [0,1,2,2,3,0,4,2]
Solution().removeElement(&arr, 2)
print(arr)
