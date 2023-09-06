final class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        words.first(where: { $0.isPalindromic }) ?? ""
    }
}

extension String {
    var isPalindromic: Bool {
        var i = makeIterator()
        var j = reversed().makeIterator()
        var a = i.next()
        var b = j.next()
        while a != nil, b != nil, a == b {
            a = i.next()
            b = j.next()
        }
        return a == b
    }
}

Solution().firstPalindrome(["abc","car","ada","racecar","cool"])
Solution().firstPalindrome(["notapalindrome","racecar"])
Solution().firstPalindrome(["def","ghi"])
