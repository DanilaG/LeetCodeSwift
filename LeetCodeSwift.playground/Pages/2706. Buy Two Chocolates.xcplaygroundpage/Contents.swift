final class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        let result = calc(prices, money)
        return result >= 0 ? result : money
    }
    
    private func calc(_ prices: [Int], _ money: Int) -> Int {
        let minVal = prices.min()!
        let filtered = prices.filter({ minVal != $0 })
        
        guard (prices.count - filtered.count) == 1 else {
            return money - 2 * minVal
        }
        
        return money - (filtered.min()! + minVal)
    }
}

Solution().buyChoco([1,2,2], 3)
Solution().buyChoco([3,2,3], 3)
