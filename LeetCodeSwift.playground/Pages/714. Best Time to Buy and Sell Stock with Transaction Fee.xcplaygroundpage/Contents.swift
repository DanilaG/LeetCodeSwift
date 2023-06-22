final class Solution {
    func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
        guard prices.count > 1 else { return 0 }
        var hold = -prices.first!
        var free = 0
        
        for i in 1..<prices.count {
            let temp = hold
            hold = max(hold, free - prices[i])
            free = max(free, hold + prices[i] - fee)
        }
        
        return free
    }
}

Solution().maxProfit([1,3,2,8,4,9], 2)
Solution().maxProfit([1,3,7,5,10,3], 3)
Solution().maxProfit([0], 3)
