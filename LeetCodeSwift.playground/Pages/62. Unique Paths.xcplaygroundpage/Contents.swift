final class Solution {
    func uniquePaths(_ mInit: Int, _ nInit: Int) -> Int {
        let m = min(mInit, nInit)
        let n = max(mInit, nInit)
        
        var old = Array(repeating: 1, count: m)
        var new = old
        
        for _ in 1..<n {
            for j in 1..<m {
                new[j] = new[j - 1] + old[j]
            }
            old = new
        }
        
        return old.last!
    }
}

Solution().uniquePaths(1, 1)
