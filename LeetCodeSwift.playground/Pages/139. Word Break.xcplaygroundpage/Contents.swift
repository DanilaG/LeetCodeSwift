final class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let s = Array(s)
        var result = Array(repeating: false, count: s.count + 1)
        result[s.count] = true
        
        for i in stride(from: s.count - 1, through: 0, by: -1) {
            for word in wordDict {
                let end = i + word.count
                
                guard
                    end < result.count,
                    result[end],
                    String(s[i..<end]) == word
                else {
                    continue
                }

                result[i] = true
                break
            }
        }
        
        return result[0]
    }
}


Solution().wordBreak("leetcode", ["leet","code"])
Solution().wordBreak("applepenapple", ["apple","pen"])
Solution().wordBreak("catsandog", ["cats","dog","sand","and","cat"])
