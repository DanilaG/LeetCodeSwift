final class Solution {
    func numSubmatrixSumTarget(_ matrix: [[Int]], _ target: Int) -> Int {
        let n = matrix.count
        let m = matrix[0].count
        
        var sums = Array(repeating: Array(repeating: 0, count: m), count: n)
        sums[0][0] = matrix[0][0]
        
        for i in 1..<n {
            sums[i][0] += sums[i - 1][0] + matrix[i][0]
        }
        for i in 1..<m {
            sums[0][i] += sums[0][i - 1] + matrix[0][i]
        }
        for i in 1..<n {
            for j in 1..<m {
                sums[i][j] = sums[i - 1][j] + sums[i][j - 1] - sums[i - 1][j - 1] + matrix[j][i]
            }
        }
        
        // print(sums)
        
        var result = 0
        for i in -1..<n {
            for j in (i + 1)..<n {
                var freqs: [Int: Int] = [0:1]
                
                // print(i, j)
                for p in 0..<m {
                    let sum = sums[j][p] - (i >= 0 ? sums[i][p] : 0)
                    // print("!", sum, sum - target, freqs)
                    if let freq = freqs[sum - target] {
                        result += freq
                    }
                    freqs[sum, default: 0] += 1
                }
                
                // print(i, j, freqs, result)
            }
        }
        
        return result
    }
}

//Solution().numSubmatrixSumTarget([[0,1,0],[1,1,1],[0,1,0]], 0)
Solution().numSubmatrixSumTarget([[1,-1],[-1,1]], 0)
