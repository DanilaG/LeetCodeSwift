final class Solution {
    func projectionArea(_ grid: [[Int]]) -> Int {
        var counter = 0
        var maxVal = 0
        for i in 0..<grid.count {
            maxVal = 0
            for j in 0..<grid.count {
                maxVal = max(maxVal, grid[j][i])
            }
            counter += maxVal + grid[i].max()! + grid[i].reduce(0, { $0 + (($1 != 0) ? 1 : 0) })
        }
        return counter
    }
}

Solution().projectionArea([[1,2],[3,4]])
Solution().projectionArea([[2]])
Solution().projectionArea([[1,0],[0,2]])
