final class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard amount > 0 else { return 0 }
        
        let inf = amount + 1
        var cache = Array(repeating: inf, count: amount + 1)
        cache[0] = 0
        
        for i in 1...amount {
            for coin in coins where coin <= i  {
                cache[i] = min(cache[i], cache[i - coin] + 1)
            }
        }
        
        let result = cache.last!
        return result == inf ? -1 : result
    }
}

Solution().coinChange([1,2,5], 11)
Solution().coinChange([2], 3)
Solution().coinChange([1], 0)
Solution().coinChange([1], 1)
