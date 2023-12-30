final class Solution {
    func frequencySort(_ s: String) -> String {
        var counter = [Character: Int]()
        for char in s {
            counter[char, default: 0] += 1
        }
        
        return counter
            .sorted(by: { $0.value > $1.value })
            .reduce("", { $0 + String(Array(repeating: $1.key, count: $1.value)) })
    }
}

Solution().frequencySort("tree")
Solution().frequencySort("cccaaa")
Solution().frequencySort("Aabb")
