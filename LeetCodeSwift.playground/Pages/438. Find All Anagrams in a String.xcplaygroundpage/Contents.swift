final class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let s = Array(s)
        let patternLength = p.count
        var patternCounter: [Character: Int] = [:]
        
        p.forEach {
            patternCounter[$0, default: 0] += 1
        }
        
        var result = [Int]()
        
        var similar = 0
        for index in 0..<s.count {
            
            let windowStart = index - (patternLength - 1)
            if windowStart > 0 {
                let letter = s[windowStart - 1]
                if let inPattern = patternCounter[letter] {
                    if inPattern >= 0 {
                        similar -= 1
                    }
                    patternCounter[letter]! += 1
                }
            }
            
            if let inPattern = patternCounter[s[index]] {
                if inPattern > 0 {
                    similar += 1
                }
                patternCounter[s[index]]! -= 1
            }
            
            if similar == patternLength && windowStart >= 0 {
                result.append(windowStart)
            }
        }
        
        return result
    }
}

Solution().findAnagrams("abab", "ab")
