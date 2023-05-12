final class Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        let sorted = mat
            .map({ $0.reduce(0, { $0 + $1 }) })
            .enumerated()
            .sorted(by: { ($0.1 == $1.1) ? ($0.0 < $0.0) : ($0.1 < $1.1) })
            .map({ $0.0 })
        return Array<Int>(sorted[0..<k])
    }
}

Solution().kWeakestRows([[1,1,0,0,0],
                         [1,1,1,1,0],
                         [1,0,0,0,0],
                         [1,1,0,0,0],
                         [1,1,1,1,1]], 3)
