final class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var x = 0
        for s in operations {
            x += s.contains("+") ? 1 : -1
        }
        return x
    }
}
