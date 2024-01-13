final class Solution {
    func minSteps(_ s: String, _ t: String) -> Int {
        var sCounter = [Character:Int]()
        for char in s {
            sCounter[char, default: 0] += 1
        }

        var tCounter = [Character:Int]()
        for char in t {
            tCounter[char, default: 0] += 1
        }

        return sCounter.reduce(0, {
            let diff = $1.value - tCounter[$1.key, default: 0]
            return $0 + (diff >= 0 ? diff : 0)
        })
    }
}

Solution().minSteps("bab", "aba")
Solution().minSteps("leetcode", "practice")
Solution().minSteps("anagram", "mangaar")
