final class Solution {
    func integerBreak(_ n: Int) -> Int {
        guard n != 2 else { return 1 }
        guard n != 3 else { return 2 }
        
        var products: [Int] = Array(0...n)

        for i in 2...n {
            for j in (i / 2)..<i {
                products[i] = max(products[i], products[j] * products[i - j])
            }
        }
        
        return products.last ?? 1
    }
}

Solution().integerBreak(2)
