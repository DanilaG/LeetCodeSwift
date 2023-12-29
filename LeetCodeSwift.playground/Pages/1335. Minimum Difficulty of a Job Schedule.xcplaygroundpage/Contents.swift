final class Solution {
    func minDifficulty(_ jobDifficulty: [Int], _ d: Int) -> Int {
        let inf = 3_000_000
        guard d > 1 else { return jobDifficulty.max()! }
        guard jobDifficulty.count > 1 else { return -1 }
        
        var dp = Array(repeating: Array(repeating: inf, count: d + 1), count: jobDifficulty.count + 1)
        
        // Первый ряд - максимумов
        dp[1][1] = jobDifficulty.first!
        for i in 2...jobDifficulty.count {
            dp[i][1] = max(dp[i - 1][1], jobDifficulty[i - 1])
        }
        
        // print(dp)
        
        for i in 2...jobDifficulty.count {
            for j in 2...d {
                guard j <= i else { continue }
                var maxVal = jobDifficulty[i - 1]
                for l in (j...i).reversed() {
                    maxVal = max(maxVal, jobDifficulty[l - 1])
                    dp[i][j] = min(dp[i][j], dp[l - 1][j - 1] + maxVal)
                }
            }
            // print(dp)
        }
        
        return dp[jobDifficulty.count][d] == inf ? -1 : dp[jobDifficulty.count][d]
    }
}

// Solution().minDifficulty([6, 5, 4, 3, 7], 3)
// Solution().minDifficulty([6,5,4,3,2,1], 2)
Solution().minDifficulty([9,9,9], 4)
Solution().minDifficulty([1,1,1], 3)
