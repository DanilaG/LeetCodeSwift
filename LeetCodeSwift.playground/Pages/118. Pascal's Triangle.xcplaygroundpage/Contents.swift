final class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows != 1 else { return [[1]] }
        var result = [[1], [1, 1]]
        guard numRows != 2 else { return result }
        
        for i in 3...numRows {
            let last = result.last!
            var current = Array(repeating: 1, count: i)
            guard i > 2 else { continue }
            for j in 1...(i - 2) {
                print(j)
                current[j] = last[j - 1] + last[j]
            }
            result.append(current)
        }
        
        return result
    }
}

Solution().generate(5)
