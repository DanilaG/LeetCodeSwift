final class Solution {
    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
        guard profit.count > 1 else { return profit.first! }

        let mapper = endTime
            .enumerated()
            .sorted(by: { $0.element < $1.element })
            .map({ $0.offset })

        var maxVal = 0
        var dp = (0..<profit.count).map({ profit[$0] })
        for i in 0..<profit.count {
            let last = mapper[0..<i]
                .last(where: { endTime[$0] <= startTime[mapper[i]] })
                .flatMap({ dp[$0] })
            ?? 0

            maxVal = max(maxVal, last + profit[mapper[i]])
            dp[mapper[i]] = maxVal
        }

        return dp.max()!
    }
}

//Solution().jobScheduling([1,2,3,3], [3,4,5,6], [50,10,40,70])
//Solution().jobScheduling([1,2,3,4,6], [3,5,10,6,9], [20,200,100,70,60])
//Solution().jobScheduling([1,1,1], [2,3,4], [5,6,4])
//Solution().jobScheduling([6,15,7,11,1,3,16,2], [19,18,19,16,10,8,19,8], [2,9,1,19,5,7,3,19])

// Solution().jobScheduling([4,2,4,8,2], [5,5,5,10,8], [1,2,8,10,4])
//Solution().jobScheduling([33,8,9,18,16,36,18,4,42,45,29,43], [40,16,32,39,46,43,28,13,44,46,39,44], [2,6,5,14,5,19,5,12,19,14,14,17])
Solution().jobScheduling([33,8,4], [40,16,13], [2,6,12,])
[14, 12, 12,]
