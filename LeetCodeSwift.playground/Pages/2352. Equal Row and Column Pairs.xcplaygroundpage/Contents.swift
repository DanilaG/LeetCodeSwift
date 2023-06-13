final class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var hash = Array(repeating: 0, count: n)
        for i in 0..<n {
            for j in 0..<n {
                hash[i] += j * grid[j][i]
            }
        }

        var result = 0
        for i in 0..<n {
            let tempHash = grid[i].enumerated().reduce(0, { $0 + ($1.0 * $1.1)})
            for j in 0..<n where hash[j] == tempHash {
                result += isEqual(i, j, grid) ? 1 : 0
            }
        }
        return result
    }

    private func isEqual(_ i: Int, _ j: Int, _ grid: [[Int]]) -> Bool {
        for k in 0..<grid.count {
            guard grid[i][k] == grid[k][j] else { return false }
        }
        return true
    }
}

Solution().equalPairs([[3,2,1],[1,7,6],[2,7,7]])
Solution().equalPairs([[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]])
