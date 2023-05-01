final class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let n = needle.count
        guard haystack.count >= n else {
            return -1
        }
        let haystack = Array(haystack)
        
        let hash = needle.reduce(0, { $0 + Int($1.asciiValue!) })
        var window = haystack[0...(n - 1)].reduce(0, { $0 + Int($1.asciiValue!) })
        
        var i = n - 1
        var start = i - n + 1
        while true {
            if window == hash, String(haystack[start...i]) == needle {
                return start
            }
            
            window -= Int(haystack[start].asciiValue!)
            
            i += 1
            start += 1
            
            guard i < haystack.count else { return -1 }
            window += Int(haystack[i].asciiValue!)
        }
        
        return -1
    }
}

Solution().strStr("asadbutsad", "sad")
Solution().strStr("leetcode", "leeto")
