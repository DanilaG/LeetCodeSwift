final class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let allowed: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var counter = 0
        let s = Array(s)
        
        for char in s[..<(s.count / 2)] where allowed.contains(char) {
            counter += 1
        }
        
        for char in s.reversed()[..<(s.count / 2)] where allowed.contains(char) {
            counter -= 1
        }
        
        return counter == 0
    }
}

Solution().halvesAreAlike("book")
Solution().halvesAreAlike("textbook")
Solution().halvesAreAlike("AbCdEfGh")
