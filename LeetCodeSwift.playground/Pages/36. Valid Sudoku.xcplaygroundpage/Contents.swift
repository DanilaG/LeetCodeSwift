class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var raw = Array(repeating: Set<Int>(), count: 9)
        var column = Array(repeating: Set<Int>(), count: 9)
        var square = Array(repeating: Set<Int>(), count: 9)
        
        for i in 0..<9 {
            for j in 0..<9 {
                guard let val = Int(String(board[i][j])) else { continue }
                let squareNumber = (i / 3) * 3 + (j / 3)
                guard
                    !raw[i].contains(val),
                    !column[j].contains(val),
                    !square[squareNumber].contains(val)
                else {
                    return false
                }
                raw[i].insert(val)
                column[j].insert(val)
                square[squareNumber].insert(val)
            }
        }
        
        return true
    }
}

Solution().isValidSudoku([["5","3",".",".","7",".",".",".","."]
                          ,["6",".",".","1","9","5",".",".","."]
                          ,[".","9","8",".",".",".",".","6","."]
                          ,["8",".",".",".","6",".",".",".","3"]
                          ,["4",".",".","8",".","3",".",".","1"]
                          ,["7",".",".",".","2",".",".",".","6"]
                          ,[".","6",".",".",".",".","2","8","."]
                          ,[".",".",".","4","1","9",".",".","5"]
                          ,[".",".",".",".","8",".",".","7","9"]])

Solution().isValidSudoku([["8","3",".",".","7",".",".",".","."]
                          ,["6",".",".","1","9","5",".",".","."]
                          ,[".","9","8",".",".",".",".","6","."]
                          ,["8",".",".",".","6",".",".",".","3"]
                          ,["4",".",".","8",".","3",".",".","1"]
                          ,["7",".",".",".","2",".",".",".","6"]
                          ,[".","6",".",".",".",".","2","8","."]
                          ,[".",".",".","4","1","9",".",".","5"]
                          ,[".",".",".",".","8",".",".","7","9"]])
