final class Solution {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        guard nums.count > 2 else { return 0 }
        
        var result = 0
        var oldDif = nums[1] - nums[0]
        var newDif = 0
        var length = 0
        
        for i in 2..<nums.count {
            let newDif = nums[i] - nums[i - 1]
            defer { oldDif = newDif }
            
            guard newDif == oldDif else {
                length = 0
                continue
            }
            length += 1
            result += length
        }
        
        return result
    }
}

Solution().numberOfArithmeticSlices([1,2,3,4, 0, 1, 1, 1, 1, 1])
