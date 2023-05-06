final class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = s.filter({ $0.isLetter || $0.isNumber }).lowercased()
        var i = s.makeIterator()
        var j = s.reversed().makeIterator()
        
        for _ in 0...(s.count / 2 + 1) {
            let iChar = i.next()
            let jChar = j.next()
            guard
                iChar == jChar
            else {
                return false
            }
        }
        
        return true
    }
}

Solution().isPalindrome("A man, a plan, a canal: Panama")
Solution().isPalindrome("race a car")
Solution().isPalindrome(" ")
Solution().isPalindrome("0P")
