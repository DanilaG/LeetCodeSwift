final class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var results = [1]
        var p = (0, 0, 0)
        for _ in 1..<n {
            let values = (results[p.0] * 2, results[p.1] * 3, results[p.2] * 5)
            var minVal = min(values.0, values.1, values.2)
            if values.0 == minVal { p.0 += 1 }
            if values.1 == minVal { p.1 += 1 }
            if values.2 == minVal { p.2 += 1 }
            results.append(minVal)
        }
        return results.last!
    }
}

Solution().nthUglyNumber(10)
