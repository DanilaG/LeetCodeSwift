final class Solution {
    func new21Game(_ n: Int, _ k: Int, _ maxPts: Int) -> Double {
        guard k > 0 && n < (k + maxPts) else { return Double(1.0) }
        var results = Array(repeating: 0.0, count: n + 1)
        results[0] = 1
        var result = 0.0
        var val = 1.0
        for i in 1...n {
            results[i] = val / Double(maxPts)
            if i < k {
                val += results[i]
            } else {
                result += results[i]
            }
            if i - maxPts >= 0 { val -= results[i - maxPts] }
        }
        return result
    }
}

Solution().new21Game(21, 17, 10)
