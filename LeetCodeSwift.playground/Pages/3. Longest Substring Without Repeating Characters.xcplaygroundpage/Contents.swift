final class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var s = Array(s)
        var set = Set<Character>()
        var counter = 0
        var maxCounter = 0
        var l = 0
        
        for r in 0..<s.count {
            if set.contains(s[r]) {
                while s[l] != s[r] {
                    set.remove(s[l])
                    l += 1
                    maxCounter = max(maxCounter, counter)
                    counter -= 1
                }
                l += 1
            } else {
                counter += 1
                set.insert(s[r])
                
            }
            print(l, counter)
        }
        
        return max(maxCounter, counter)
    }
}

Solution().lengthOfLongestSubstring("tmmzuxt")
