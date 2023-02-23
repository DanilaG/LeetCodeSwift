final class Solution {
    
    private grid: [[Character]] = [[]]
    
    func numIslands(_ grid: [[Character]]) -> Int {
        var counter = 0
        self.grid = grid
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if self.grid[i][j] == "1" {
                    counter += 1
                    blowUpIsland(i, j)
                }
            }
        }
    }
    
    private func blowUpIsland(_ x: Int, _ y: Int) {
        guard
            0 <= x, x < grid.count,
            0 <= y, y < grid[x].count,
            grid[x][y] == "1"
        else { return }
        
        grid[x][y] = "0"
        blowUpIsland(x, y + 1)
        blowUpIsland(x + 1, y)
        blowUpIsland(x, y - 1)
        blowUpIsland(x - 1, y)
    }
}
