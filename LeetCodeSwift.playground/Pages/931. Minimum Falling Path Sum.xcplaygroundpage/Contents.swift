final class Solution {
    func minFallingPathSum(_ matrix: [[Int]]) -> Int {
        minFallingPathSum(0, matrix).min()!
    }
    
    private func minFallingPathSum( _ index: Int, _ matrix: [[Int]]) -> [Int] {
        guard index != (matrix.count - 1) else { return matrix[index] }
        let last = minFallingPathSum(index + 1, matrix)
        var result = matrix[index]
        for i in 0..<matrix[index].count {
            result[i] += min(
                i > 0 ? last[i - 1] : last[i],
                last[i],
                i < (matrix[index].count - 1) ? last[i + 1] : last[i]
            )
        }
        return result
    }
}

Solution().minFallingPathSum([[2,1,3],[6,5,4],[7,8,9]])
Solution().minFallingPathSum([[-19,57],[-40,-5]])
