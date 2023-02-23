class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var set = Set<Character>()
        var iterator = s.makeIterator()
        var pairsCount = 0
        
        while let char = iterator.next() {
            guard !set.contains(char) else {
                set.remove(char)
                pairsCount += 1
                continue
            }
            
            set.insert(char)
        }
        
        return pairsCount * 2 + (set.isEmpty ? 0 : 1)
    }
}

Solution().longestPalindrome("a")
