final class Solution {
    
    var visited: Array<Bool> = []
    
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        var result = 0
        let n = isConnected.count
        visited = .init(repeating: false, count: n)
        
        for i in 0..<n {
            if !visited[i] {
                result += 1
            }
            
            visit(i, isConnected)
        }
        
        return result
    }
    
    private func visit( _ i: Int, _ isConnected: [[Int]]) {
        visited[i] = true
        for j in 0..<isConnected.count where !visited[j] {
            if isConnected[i][j] == 1 {
                visit(j, isConnected)
            }
        }
    }
}

Solution().findCircleNum([[1,1,0],[1,1,0],[0,0,1]])
Solution().findCircleNum([[1,1,1],[1,1,1],[1,1,1]])
Solution().findCircleNum([[1,0,0,1],[0,1,1,0],[0,1,1,1],[1,0,1,1]])
