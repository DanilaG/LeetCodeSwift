final class Solution {
    func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
        var steps = Array(repeating: Array(repeating: 0, count: n), count: m)
        steps[startRow][startColumn] = 1
        
        let mod = 1_000_000_007
        var result = 0
        
        for _ in 0..<maxMove {
            var newSteps = Array(repeating: Array(repeating: 0, count: n), count: m)
            
            for i in 0..<m {
                for j in 0..<n {
                    let value = steps[i][j]
                    
                    for (iOffset, jOffset) in [(1, 0), (-1, 0), (0, 1), (0, -1)] {
                        let newI = i + iOffset
                        let newJ = j + jOffset
                        
                        if 0 <= newI, newI < m, 0 <= newJ, newJ < n {
                            newSteps[newI][newJ] = (newSteps[newI][newJ] + value) % mod
                        } else {
                            result = (result + value) % mod
                        }
                    }
                }
            }
            
            steps = newSteps
        }
        
        return result
    }
}
