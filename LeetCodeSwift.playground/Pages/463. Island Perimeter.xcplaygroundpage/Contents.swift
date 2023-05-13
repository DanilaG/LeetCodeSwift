final class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var grid = grid
        for i in 0..<grid.count {
            for j in 0..<grid[i].count where grid[i][j] == 1 {
                return perimeter(i, j, &grid)
            }
        }
        return 0
    }

    private func perimeter(_ i: Int, _ j: Int, _ grid: inout [[Int]]) -> Int {
        guard i >= 0, i < grid.count else { return 1 }
        guard j >= 0, j < grid[i].count else { return 1 }
        if grid[i][j] == -1 { return 0 }
        if grid[i][j] == 0 { return 1 }
        grid[i][j] = -1
        return perimeter(i + 1, j, &grid) +
            perimeter(i - 1, j, &grid) +
            perimeter(i, j + 1, &grid) +
            perimeter(i, j - 1, &grid)
    }
}

Solution().islandPerimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]])
Solution().islandPerimeter([[1]])
Solution().islandPerimeter([[1, 0]])
