final class Solution {
    func shortestBridge(_ grid: [[Int]]) -> Int {
        var grid = grid
        markSecondIsland(&grid)
        var borders = borders(for: 1, grid)
        var counter = 1
        while !connected(borders, grid) {
            counter += 1
            borders = blowUp(counter, &grid, borders)
        }
        return counter - 1
    }

    private func markSecondIsland(_ grid: inout [[Int]]) {
        for i in 0..<grid.count {
            for j in 0..<grid[i].count where grid[i][j] == 1 {
                remark(1, to: -1, &grid, i, j)
                return
            }
        }
    }

    private func borders(for val: Int, _ grid: [[Int]]) -> Set<[Int]> {
        var result = Set<[Int]>()
        for i in 0..<grid.count {
            for j in 0..<grid[i].count where grid[i][j] == val && isBorder(grid, i, j) {
                result.insert([i, j])
            }
        }
        return result
    }

    private func connected(_ borders: Set<[Int]>, _ grid: [[Int]]) -> Bool {
        for i in borders {
            if isSecondIsland(grid, i[0] + 1, i[1]) ||
                isSecondIsland(grid, i[0] - 1, i[1]) ||
                isSecondIsland(grid, i[0], i[1] + 1) ||
                isSecondIsland(grid, i[0], i[1] - 1) {
                    return true
                }
        }
        return false
    }

    private func blowUp(_ val: Int, _ grid: inout [[Int]], _ borders: Set<[Int]>) -> Set<[Int]> {
        var newBorder = Set<[Int]>()
        for border in borders {
            if isEmpty(grid, border[0] + 1, border[1]) { newBorder.insert([border[0] + 1, border[1]]) }
            if isEmpty(grid, border[0] - 1, border[1]) { newBorder.insert([border[0] - 1, border[1]]) }
            if isEmpty(grid, border[0], border[1] + 1) { newBorder.insert([border[0], border[1] + 1]) }
            if isEmpty(grid, border[0], border[1] - 1) { newBorder.insert([border[0], border[1] - 1]) }
        }
        for border in newBorder { grid[border[0]][border[1]] = val }
        return newBorder
    }

    private func remark(_ val: Int, to toVal: Int, _ grid: inout [[Int]], _ i: Int, _ j: Int) {
        guard i >= 0, i < grid.count else { return }
        guard j >= 0, j < grid[i].count else { return }
        guard grid[i][j] == val else { return }

        grid[i][j] = toVal
        
        remark(val, to: toVal, &grid, i + 1, j)
        remark(val, to: toVal, &grid, i - 1, j)
        remark(val, to: toVal, &grid, i, j + 1)
        remark(val, to: toVal, &grid, i, j - 1)
    }

    private func isBorder(_ grid: [[Int]], _ i: Int, _ j: Int) -> Bool {
        return isEmpty(grid, i - 1, j) ||
            isEmpty(grid, i + 1, j) ||
            isEmpty(grid, i, j - 1) ||
            isEmpty(grid, i, j + 1)
    }

    private func isEmpty(_ grid: [[Int]], _ i: Int, _ j: Int) -> Bool {
        guard i >= 0, i < grid.count else { return false }
        guard j >= 0, j < grid[i].count else { return false }
        return grid[i][j] < 1
    }

    private func isSecondIsland(_ grid: [[Int]], _ i: Int, _ j: Int) -> Bool {
        guard i >= 0, i < grid.count else { return false }
        guard j >= 0, j < grid[i].count else { return false }
        return grid[i][j] == -1
    }
}


// Solution().shortestBridge([[0,1],[1,0]])
// Solution().shortestBridge([[0,1,0],[0,0,0],[0,0,1]])
Solution().shortestBridge([[1,1,1,1,1],[1,0,0,0,1],[1,0,1,0,1],[1,0,0,0,1],[1,1,1,1,1]])

