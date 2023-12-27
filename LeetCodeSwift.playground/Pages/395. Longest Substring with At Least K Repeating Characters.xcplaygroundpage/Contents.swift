final class Solution {
    func longestSubstring(_ s: String, _ k: Int) -> Int {
        let start = Character("a").asciiValue!
        return longestSubstring(s.map({ Int($0.asciiValue! - start) }), k)
    }
    
    func longestSubstring(_ s: Array<Int>, _ k: Int) -> Int {
        var counter = Array(repeating: 0, count: 26)
        for char in s {
            counter[char] += 1
        }
        
        guard counter.contains(where: { $0 < k && $0 != 0 }) else {
            return s.count
        }
            
        let separated = sep(s, counter, k)
        // print(s, separated)
        return separated.map({ longestSubstring($0, k) }).max() ?? 0
    }
    
    func sep(_ s: Array<Int>, _ counter: [Int], _ k: Int) -> [Array<Int>] {
        var result = [Array<Int>]()
        var left = 0
        for i in 0..<s.count {
            if counter[s[i]] < k {
                if left != i {
                    result.append(Array(s[left..<i]))
                }
                left = i + 1
            }
        }
        if left != s.count {
            result.append(Array(s[left..<s.count]))
        }
        //print(s, counter, left, result)
        return result
    }
}

//Solution().longestSubstring("aaabb", 3)
Solution().longestSubstring("ababbc", 2)
