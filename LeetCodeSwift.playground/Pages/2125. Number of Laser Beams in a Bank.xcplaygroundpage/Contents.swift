final class Solution {
    func numberOfBeams(_ bank: [String]) -> Int {
        var counter = 0
        var result = 0
        for s in bank {
            let newLayer = s.reduce(0, { $0 + ($1 == "1" ? 1 : 0) })
            guard newLayer != 0 else { continue }
            result += counter * newLayer
            counter = newLayer
        }
        return result
    }
}

Solution().numberOfBeams(["011001","000000","010100","001000"])
Solution().numberOfBeams(["000","111","000"])
