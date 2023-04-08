final class Solution {
    func maxPoints(_ points: [[Int]]) -> Int {
        let n = points.count
        var result = 0
        
        for i in 0..<(n - 1) {
            var map = [Int? : Int]()
            for j in (i + 1)..<n {
                let a = a(for: points[i], points[j])
                map[a, default: 0] += 1
            }
            result = max(result, map.values.max() ?? 0)
        }
        
        return result + 1
    }
    
    private func a(for a: [Int], _ b: [Int]) -> Int? {
        let eps = 1_000_000_000.0
        
        guard a[0] != b[0] else { return nil }
        return Int(Double(a[1] - b[1]) / Double(a[0] - b[0]) * eps)
    }
}

// Solution().maxPoints([[1,1],[2,2],[3,3]])
Solution().maxPoints([[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]])
