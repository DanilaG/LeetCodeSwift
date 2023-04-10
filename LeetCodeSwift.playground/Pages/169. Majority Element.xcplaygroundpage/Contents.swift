class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var result = 0
        var counter = 0
        
        for i in nums {
            if counter == 0 {
                result = i
            }
            counter += (result == i) ? 1 : -1
        }
        
        return result
    }
}

Solution().majorityElement([2,2,1,1,3,2,2])
Solution().majorityElement([3, 3, 4])
Solution().majorityElement([1,3,1,1,4,1,1,5,1,1,6,2,2])
