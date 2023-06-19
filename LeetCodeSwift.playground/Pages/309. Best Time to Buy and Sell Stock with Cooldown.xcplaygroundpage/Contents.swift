final class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var bestSell = Array(repeating: 0, count: prices.count)
        for i in (0..<(prices.count - 1)).reversed() {
            bestSell[i] = bestSell[i + 1]
            for j in ((i + 1)..<prices.count) where prices[i] < prices[j] {
                var newBest = (prices[j] - prices[i]) + (((j + 2) < prices.count) ? bestSell[j + 2] : 0)
                bestSell[i] = max(bestSell[i], newBest)
            }
        }
        return bestSell.first!
    }
}

Solution().maxProfit([1,2,3,0,2])
Solution().maxProfit([1])
