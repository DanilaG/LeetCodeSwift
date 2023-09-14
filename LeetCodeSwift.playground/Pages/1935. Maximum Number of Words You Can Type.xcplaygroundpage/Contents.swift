final class Solution {
    func canBeTypedWords(_ text: String, _ brokenLetters: String) -> Int {
        let brokenLetters = Set(brokenLetters)
        return text.split(separator: " ").reduce(0, { $0 + (Set($1).intersection(brokenLetters).isEmpty ? 1 : 0) })
    }
}

Solution().canBeTypedWords("hello world", "ad")
Solution().canBeTypedWords("leet code", "lt")
Solution().canBeTypedWords("leet code", "e")
