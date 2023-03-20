final class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var board = board
        for x in 0..<board.count {
            for y in 0..<board[x].count {
                if search(word: Array(word), index: 0, in: &board, x: x, y: y) {
                    return true
                }
            }
        }
        return false
    }
    
    private func search(word: [Character], index: Int, in board: inout [[Character]], x: Int, y: Int) -> Bool {
        guard index < word.count else { return true }
        guard x < board.count, y < board[0].count, x >= 0, y >= 0 else { return false }
        guard word[index] == board[x][y] else { return false }
        
        board[x][y] = "*"
        defer { board[x][y] = word[index] }
        
        return search(word: word, index: index + 1, in: &board, x: x + 1, y: y) ||
            search(word: word, index: index + 1, in: &board, x: x, y: y + 1) ||
            search(word: word, index: index + 1, in: &board, x: x - 1, y: y) ||
            search(word: word, index: index + 1, in: &board, x: x, y: y - 1)
    }
}

Solution().exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCB")
