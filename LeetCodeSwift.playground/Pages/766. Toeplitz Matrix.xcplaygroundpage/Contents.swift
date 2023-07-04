final class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        guard matrix.count > 1 else { return true }
        guard matrix[0].count > 1 else { return true }
        for i in 0..<(matrix.count - 1) {
            for j in 0..<(matrix[i].count - 1) {
                guard matrix[i][j] == matrix[i + 1][j + 1] else {
                    return false
                }
            }
        }
        return true
    }
}

Solution().isToeplitzMatrix([[1,2,3,4],[5,1,2,3],[9,5,1,2]])
Solution().isToeplitzMatrix([[1,2],[2,2]])
