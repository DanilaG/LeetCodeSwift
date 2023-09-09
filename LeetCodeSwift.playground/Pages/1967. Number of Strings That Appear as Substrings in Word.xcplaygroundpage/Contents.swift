final class Solution {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        patterns.reduce(0, { $0 + (word.contains($1) ? 1 : 0) })
    }
}

Solution().numOfStrings(["a","abc","bc","d"], "abc")
Solution().numOfStrings(["a","b","c"], "aaaaabbbbb")
Solution().numOfStrings(["a","a","a"], "ab")
