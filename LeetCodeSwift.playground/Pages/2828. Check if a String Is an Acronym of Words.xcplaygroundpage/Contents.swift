final class Solution {
    func isAcronym(_ words: [String], _ s: String) -> Bool {
        var wordsIterator = words.makeIterator()
        var sIterator = s.makeIterator()
        while let s = sIterator.next() {
            guard wordsIterator.next()?.first == s else { return false }
        }
        return wordsIterator.next() == nil
    }
}

Solution().isAcronym(["alice","bob","charlie"], "abc")
Solution().isAcronym(["an","apple"], "a")
Solution().isAcronym(["never","gonna","give","up","on","you"], "ngguoy")
