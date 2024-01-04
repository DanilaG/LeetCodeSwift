final class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var counter = [Int:Int]()
        for num in nums {
            counter[num, default: 0] += 1
        }
        
        var result = 0
        for num in counter.values {
            guard num != 1 else {
                return -1
            }
            
            result += (num + 2) / 3
        }
        
        return result
    }
}

Solution().minOperations([2,3,3,2,2,4,2,3,4])
Solution().minOperations([2,1,2,2,3,3])
Solution().minOperations([14,12,14,14,12,14,14,12,12,12,12,14,14,12,14,14,14,12,12])
