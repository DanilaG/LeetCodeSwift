final class Solution {
    func longestPalindrome(_ string: String) -> String {
        let s = Array(string)
        var maxVal = 0
        var left = 0
        
        for i in 0..<s.count {
            let odd = oddPalin(from: i, in: s)
            if maxVal < odd {
                maxVal = odd
                left = i - ((maxVal - 1) / 2)
            }

            let even = evenPalin(from: i, in: s)
            if maxVal < even {
                maxVal = even
                left = i - (maxVal / 2)
            }
        }
        
        let start = string.index(string.startIndex, offsetBy: left)
        let end = string.index(string.startIndex, offsetBy: left + maxVal)
        return String(string[start..<end])
    }
    
    private func oddPalin(from i: Int, in s: Array<Character>) -> Int {
        var left = i - 1
        var right = i + 1
        var counter = 1
        while left >= 0, right < s.count, s[left] == s[right] {
            counter += 1
            left -= 1
            right += 1
        }
        return right - left - 1
    }
    
    private func evenPalin(from i: Int, in s: Array<Character>) -> Int {
        var left = i - 1
        var right = i
        while left >= 0, right < s.count, s[left] == s[right] {
            left -= 1
            right += 1
        }
        return right - left - 1
    }
}

// Solution().longestPalindrome("cbbd")
// Solution().longestPalindrome("babad")
