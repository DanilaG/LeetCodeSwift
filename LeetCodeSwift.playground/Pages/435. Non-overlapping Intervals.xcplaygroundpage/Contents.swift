final class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        guard intervals.count > 1 else { return 0 }
        let sorted = intervals.sorted(by: { $0[0] < $1[0] })
        var counter = 1
        var current = sorted.last![0]
        for i in sorted.reversed()[1...] where i[1] <= current  {
            current = i[0]
            counter += 1
        }
        return intervals.count - counter
    }
}

Solution().eraseOverlapIntervals([[1,2],[2,3],[3,4],[1,3]])
Solution().eraseOverlapIntervals([[1,2],[1,2],[1,2]])
Solution().eraseOverlapIntervals([[1,2],[2,3]])
