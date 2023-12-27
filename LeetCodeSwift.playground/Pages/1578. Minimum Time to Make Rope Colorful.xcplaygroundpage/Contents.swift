final class Solution {
    func minCost(_ colors: String, _ neededTime: [Int]) -> Int {
        var result = 0
        var colorOfLast = colors.first!
        var costOfLast = neededTime.first!
        for (color, cost) in zip(Array(colors)[1...], neededTime[1...]) {
            if colorOfLast == color {
                if cost < costOfLast {
                    result += cost
                } else {
                    result += costOfLast
                    costOfLast = cost
                }
            } else {
                colorOfLast = color
                costOfLast = cost
            }
        }
        return result
    }
}

Solution().minCost("abaac", [1,2,3,4,5])
Solution().minCost("abc", [1,2,3])
Solution().minCost("aabaa", [1,2,3,4,1])
