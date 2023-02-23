class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var bestDiff = 0
        var min = prices[0]

        prices.forEach {
            if $0 < min {
                min = $0
                return
            }
            
            let diff = $0 - min
            if diff > bestDiff {
                bestDiff = diff
            }
        }
        
        return bestDiff
    }
}

Solution().maxProfit([7,6,4,3,1])
