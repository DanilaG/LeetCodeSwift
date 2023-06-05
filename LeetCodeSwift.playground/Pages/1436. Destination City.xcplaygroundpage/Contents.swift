final class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var input = Set(paths.map({ $0[0] }))
        var output = Set(paths.map({ $0[1] }))
        return output.subtracting(input).first!
    }
}

Solution().destCity([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]])
Solution().destCity([["B","C"],["D","B"],["C","A"]])
