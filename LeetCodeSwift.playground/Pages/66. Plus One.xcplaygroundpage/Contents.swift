final class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        
        for i in stride(from: result.count - 1, through: 0, by: -1) {
            guard result[i] == 9 else {
                result[i] += 1
                return result
            }
            result[i] = 0
        }
        
        result.insert(1, at: 0)
        return result
    }
}

Solution().plusOne([1, 2, 3])
Solution().plusOne([4,3,2,1])
Solution().plusOne([9, 9])
