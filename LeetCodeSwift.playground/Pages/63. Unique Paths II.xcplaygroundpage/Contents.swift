final class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let n = obstacleGrid.count
        let m = obstacleGrid.first!.count
        guard
            obstacleGrid.first!.first != 1,
            obstacleGrid.last!.last != 1
        else { return 0 }
        
        var counterLast = Array(repeating: 0, count: m + 1)
        var counter = Array(repeating: 0, count: m + 1)
        counter[m - 1] = 1
        
        for step in obstacleGrid.reversed() {
            for i in (0..<m).reversed() where step[i] != 1 {
                counter[i] = counter[i] + counter[i + 1] + counterLast[i]
            }
            counterLast = counter
            counter = Array(repeating: 0, count: m + 1)
        }
        
        return counterLast.first!
    }
}

Solution().uniquePathsWithObstacles([[0,0,0],[0,1,0],[0,0,0]])
Solution().uniquePathsWithObstacles([[0,1],[0,0]])
