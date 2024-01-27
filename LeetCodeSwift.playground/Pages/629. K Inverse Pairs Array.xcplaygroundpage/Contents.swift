final class Solution {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        guard k != 0 else { return 1 }
        
        let mod = Int(1E9+7)
        var dp = Array(repeating: Array(repeating: 0, count: k + 1), count: n + 1)
        for i in 0...n { dp[i][0] = 1 }
        print(dp)
        for i in 1...n {
            for j in 1...k {
                var result = 0
                for p in 0...min(i - 1, j) {
                    result = (result + dp[i - 1][j - p]) % mod
                }
                dp[i][j] = result
            }
        }
        
        return dp[n][k]
    }
}

Solution().kInversePairs(3, 0)
