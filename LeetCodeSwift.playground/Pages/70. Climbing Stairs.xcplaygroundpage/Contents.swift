final class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n >= 0 else { return 0 }
        guard n != 1 else { return 1 }
        guard n != 2 else { return 2 }
        
        var a = 1
        var b = 2
        var result = 0
        for _ in 3...n {
            result = a + b
            a = b
            b = result
        }

        return result
    }
}

Solution().climbStairs(2)
Solution().climbStairs(3)
Solution().climbStairs(4)
