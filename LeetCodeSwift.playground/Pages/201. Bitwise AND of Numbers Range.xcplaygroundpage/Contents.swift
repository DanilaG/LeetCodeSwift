final class Solution {
    func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
        var left = left
        var right = right
        var result = left
        
        for i in 0..<left.bitWidth {
            if (left & 1) != (right & 1) {
                result = (left >> 1) << (i + 1)
            }
            
            left >>= 1
            right >>= 1
        }
        
        return result
    }
}

Solution().rangeBitwiseAnd(5, 5)
Solution().rangeBitwiseAnd(5, 7)
Solution().rangeBitwiseAnd(0, 0)
Solution().rangeBitwiseAnd(1, 2147483647)
