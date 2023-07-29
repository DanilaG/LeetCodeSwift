import Foundation

final class Solution {
    func soupServings(_ n: Int) -> Double {
        guard n != 0 else { return 0.5 }
        let m = Int(ceil(Double(n) / 25.0))
        var cache = [[Int]: Double]()
        for i in 1...m where prob(i, i, &cache) > 1 - 1e-5 { return 1.0 }
        return prob(m, m, &cache)
    }
    
    private func prob(_ a: Int, _ b: Int, _ cache: inout [[Int]: Double]) -> Double {
        if a <= 0 && b <= 0 { return 0.5 }
        if a <= 0 { return 1 }
        if b <= 0 { return 0 }
        
        if let cached = cache[[a, b]] {
            return cached
        }
        
        let result = 0.25 * (
            prob(a - 4, b, &cache) +
            prob(a - 3, b - 1, &cache) +
            prob(a - 2, b - 2, &cache) +
            prob(a - 1, b - 3, &cache)
        )
        cache[[a, b]] = result
        return result
    }
}

Solution().soupServings(50)
Solution().soupServings(100)
Solution().soupServings(800)
