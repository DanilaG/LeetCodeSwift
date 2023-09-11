final class Solution {
    func countWords(_ words1: [String], _ words2: [String]) -> Int {
        var words1Set = Set<String>()
        var repeated = Set<String>()
        for word in words1 {
            guard words1Set.contains(word) else {
                words1Set.insert(word)
                continue
            }
            repeated.insert(word)
        }
        words1Set = words1Set.subtracting(repeated)
        
        var words2Set = Set<String>()
        for word in words2 {
            guard words2Set.contains(word) else {
                words2Set.insert(word)
                continue
            }
            repeated.insert(word)
        }
        words2Set = words2Set.subtracting(repeated)
        
        return words2Set.intersection(words1).count
    }
}

Solution().countWords(["leetcode","is","amazing","as","is"], ["amazing","leetcode","is"])
Solution().countWords(["b","bb","bbb"], ["a","aa","aaa"])
Solution().countWords(["a","ab"], ["a","a","a","ab"])
