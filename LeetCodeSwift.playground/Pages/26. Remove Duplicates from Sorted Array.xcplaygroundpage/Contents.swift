final class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return 1 }
        var l = 0
        var r = 1
        
        while r < nums.count {
            if nums[l] != nums[r] {
                if (r - l) > 1 {
                    l += 1
                    nums[l] = nums[r]
                } else {
                    l = r
                }
            }
            r += 1
        }

        return l + 1
    }
}

// var r = [1,1,2]
var r = [0,0,1,1,1,2,2,3,3,4]
Solution().removeDuplicates(&r)
print(r)
