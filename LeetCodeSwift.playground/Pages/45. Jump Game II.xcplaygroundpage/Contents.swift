final class Solution {
    func jump(_ nums: [Int]) -> Int {
        let length = nums.count
        guard length != 1 else { return 0 }
        
        var maxCurrent = 0
        var maxNext = 0
        var counter = 0
        
        for i in 0..<length {
            maxNext = max(maxNext, i + nums[i])
            
            if maxNext >= (length - 1) {
                return counter + 1
            }
            
            if maxCurrent == i {
                maxCurrent = maxNext
                maxNext = i + nums[i]
                counter += 1
            }
        }
        
        return counter
    }
}

// Solution().jump([2,3,1,1,4])
// Solution().jump([1, 1, 1, 1]) // 3
// Solution().jump([2,3,0,1,4])
// Solution().jump([1, 2, 3]) // 2
Solution().jump([1, 2]) // 1
