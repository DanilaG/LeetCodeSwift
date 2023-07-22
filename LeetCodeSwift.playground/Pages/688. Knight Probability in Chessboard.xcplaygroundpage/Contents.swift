final class Solution {
    func knightProbability(_ n: Int, _ k: Int, _ row: Int, _ column: Int) -> Double {
        guard k > 0 else { return 1 }
        guard k > 1 else { return Double(getNext(n, row, column).count) * 0.125 }
        
        var variants = Array(repeating: Array(repeating: [(Int, Int)](), count: n), count: n)
        for i in 0..<n {
            for j in 0..<n {
                variants[i][j] = getNext(n, i, j)
            }
        }
        
        var probabilities = Array(repeating: Array(repeating: 1.0, count: n), count: n)
        for _ in 0..<k {
            let oldProbabilities = probabilities
            for i in 0..<n {
                for j in 0..<n {
                    probabilities[i][j] = variants[i][j].reduce(
                        0.0,
                        { $0 + 0.125 * oldProbabilities[$1.0][$1.1] }
                    )
                }
            }
        }
        
        return probabilities[row][column]
    }
    
    private func getNext(_ n: Int, _ row: Int, _ column: Int) -> [(Int, Int)] {
        var results: [(Int, Int)] = []
        if row >= 1 {
            if row >= 2 {
                if column < (n - 1) {
                    results.append((row - 2, column + 1))
                }
                if column >= 1 {
                    results.append((row - 2, column - 1))
                }
            }
            if column < (n - 2) {
                results.append((row - 1, column + 2))
            }
            if column >= 2 {
                results.append((row - 1, column - 2))
            }
        }
        if row < (n - 1) {
            if row < (n - 2) {
                if column < (n - 1) {
                    results.append((row + 2, column + 1))
                }
                if column >= 1 {
                    results.append((row + 2, column - 1))
                }
            }
            if column < (n - 2) {
                results.append((row + 1, column + 2))
            }
            if column >= 2 {
                results.append((row + 1, column - 2))
            }
        }
        return results
    }
}

Solution().knightProbability(3, 2, 0, 0)
Solution().knightProbability(1, 0, 0, 0)
Solution().knightProbability(8, 30, 6, 4)
