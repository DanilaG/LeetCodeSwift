class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var maxValue = 0
        for char in Set(s) {
            maxValue = max(maxValue, maxLength(char, s, k))
        }
        return maxValue
    }
    
    func maxLength(_ char: Character, _ s: String, _ k: Int) -> Int {
        guard k != 0 else {
            return maxLength(char, s)
        }
        var right = s.count - 1
        var left = s.count
        var maxVal = 0
        var k = k
        var set = Set<Int>()
        
        for c in s.reversed() {
            left -= 1
            guard c != char else {
                // print(c, "skip", k, left)
                continue
            }
            
            guard k == 0 else {
                // print(c, "insert", k, left)
                set.insert(left)
                k -= 1
                continue
            }
            
            maxVal = max(maxVal, right - left)
            let oldest = (set.max() ?? (right))
            right = oldest - 1
            //print(c, "max", k, left, right, set, maxVal)
            set.remove(oldest)
            set.insert(left)
        }
        
        return max(maxVal, right - left + 1)
    }
    
    func maxLength(_ char: Character, _ s: String) -> Int {
        var counter = 0
        var maxVal = 0
        for c in s {
            if c != char {
                maxVal = max(maxVal, counter)
                counter = 0
            } else {
                counter += 1
            }
        }
        return max(maxVal, counter)
    }
}

//Solution().characterReplacement("ABAB", 2)
//Solution().characterReplacement("AABABBA", 1)
Solution().characterReplacement("AAAA", 0)
