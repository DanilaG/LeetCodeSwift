final class Solution {
    func maximumNumberOfStringPairs(_ words: [String]) -> Int {
        var map = [String: Int]()
        var counter = 0
        for word in words.reversed() {
            counter += map[String(word.reversed()), default: 0]
            map[word, default: 0] += 1
        }
        return counter
    }
}

Solution().maximumNumberOfStringPairs(["cd","ac","dc","ca","zz"])
Solution().maximumNumberOfStringPairs(["ab","ba","cc"])
Solution().maximumNumberOfStringPairs(["aa","ab"])
Solution().maximumNumberOfStringPairs(["aa","aa","aa"])
