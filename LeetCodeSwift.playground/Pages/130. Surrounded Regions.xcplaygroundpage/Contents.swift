final class Solution {
    func solve(_ board: inout [[Character]]) {
        guard !board.isEmpty, !board[0].isEmpty else {
            return
        }
        
        let n = board.count
        let m = board[0].count
                
        for i in 0..<n {
            mark(&board, for: i, 0)
            mark(&board, for: i, m - 1)
        }
        
        for j in 0..<m {
            mark(&board, for: 0, j)
            mark(&board, for: n - 1, j)
        }
                
        for i in 0..<n {
            for j in 0..<m {
                if board[i][j] == "O" {
                    board[i][j] = "X"
                }
            }
        }
        
        for i in 0..<n {
            for j in 0..<m {
                if board[i][j] == "L" {
                    board[i][j] = "O"
                }
            }
        }
    }
    
    func mark(_ board: inout [[Character]], for i: Int, _ j: Int) {
        guard 0 <= i, i < board.count, 0 <= j, j < board[0].count, board[i][j] == "O" else { return }
        
        board[i][j] = "L"
        mark(&board, for: i, j + 1)
        mark(&board, for: i, j - 1)
        mark(&board, for: i + 1, j)
        mark(&board, for: i - 1, j)
    }
}

var arr: [[Character]] = [["X"]]
Solution().solve(&arr)
print(arr)
