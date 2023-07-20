final class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        let n = matrix.count
        let m =  matrix.first!.count
        var result = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0..<m{
            for j in 0..<n {
                result[i][j] = matrix[j][i]
            }
        }
        return result
    }
}

Solution().transpose([[1,2,3],[4,5,6],[7,8,9]])
Solution().transpose([[1,2,3],[4,5,6]])
