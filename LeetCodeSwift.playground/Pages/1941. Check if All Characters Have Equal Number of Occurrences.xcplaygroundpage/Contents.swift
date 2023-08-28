final class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        var map = [Character: Int]()
        for i in s {
            map[i, default: 0] += 1
        }
        let counter = map.first!.value
        for i in map.values where i != counter { return false }
        return true
    }
}

Solution().areOccurrencesEqual("abacbc")
Solution().areOccurrencesEqual("aaabb")
