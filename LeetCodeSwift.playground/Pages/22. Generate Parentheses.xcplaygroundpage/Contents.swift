final class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        make(open: n, close: 0)
    }
    
    private func make(open: Int, close: Int) -> [String] {
        if open == 0 && close == 1 { return [")"] }

        var result: [String] = []
        if open > 0 {
            result += make(open: open - 1, close: close + 1).map { "(\($0)" }
        }
        if close > 0 {
            result += make(open: open, close: close - 1).map { ")\($0)" }
        }
        
        return result
    }
}

Solution().generateParenthesis(1)
