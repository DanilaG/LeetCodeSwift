final class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        guard points.count > 1 else { return 0 }
        var start = points.first!
        var result = 0
        for i in points[1...] {
            let diffX = abs(i[0] - start[0])
            let diffY = abs(i[1] - start[1])
            result += -min(diffX, diffY) + diffX + diffY
            start = i
        }
        return result
    }
}

Solution().minTimeToVisitAllPoints([[1,1],[3,4],[-1,0]])
Solution().minTimeToVisitAllPoints([[3,2],[-2,2]])
