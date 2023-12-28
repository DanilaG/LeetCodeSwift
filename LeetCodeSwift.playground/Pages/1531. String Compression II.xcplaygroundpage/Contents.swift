class Solution {
    func getLengthOfOptimalCompression(_ s: String, _ k: Int) -> Int {
        let s = Array(s)
        var dp = Array(repeating: Array(repeating: 100, count: k + 1), count: s.count + 1)
        dp[0] = Array(repeating: 0, count: k + 1)

        for i in 1...s.count {
            for j in 0...k {
                
                var repite = 0
                var delete = 0
                
                for l in (1...i).reversed() {
                    if s[l - 1] == s[i - 1] {
                        repite += 1
                    } else {
                        delete += 1
                    }
                    
                    let diff = j - delete
                    if diff >= 0 {
                        dp[i][j] = min(
                            dp[i][j],
                            dp[l - 1][j - delete] + ({
                                switch repite {
                                case ...0:
                                    return 0
                                case 1:
                                    return 1
                                case 2...9:
                                    return 2
                                case 10...99:
                                    return 3
                                case 100...:
                                    return 4
                                default:
                                    return 0
                                }
                            }()))
                    }
                }
                
                if j > 0 {
                    dp[i][j] = min(dp[i][j], dp[i - 1][j - 1])
                }
            }
        }
        
        return dp[s.count][k]
    }
}

//Solution().getLengthOfOptimalCompression("aaabcccd", 2)
//Solution().getLengthOfOptimalCompression("aabbaa", 2)
Solution().getLengthOfOptimalCompression("aaaaaaaaaaa", 0)
