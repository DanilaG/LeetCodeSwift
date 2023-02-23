class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n != 0 else { return 0 }
        guard n != 1 else { return 1 }
        guard n != 2 else { return 2 }
        
        return climbStairs(n - 2) + climbStairs(n - 1)
    }
}

Solution().climbStairs(2)
