final class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        guard !word1.isEmpty else { return word2.count }
        guard !word2.isEmpty else { return word1.count }
        
        let n = word1.count
        let word1 = Array(word1)
        var old = Array(repeating: 0, count: n + 1)
        var new = Array(repeating: 0, count: n + 1)
        for i in 0..<n {
            old[i] = n - i
        }
        
        for char in word2.reversed() {
            for i in stride(from: n - 1, through: 0, by: -1) {
                if word1[i] == char {
                    new[i] = old[i + 1]
                } else {
                    new[i] = min(new[i + 1], old[i], old[i + 1]) + 1
                }
            }
            
            new[n] += 1
            old = new
        }
        
        return new[0]
    }
}

Solution().minDistance("a", "ab")
