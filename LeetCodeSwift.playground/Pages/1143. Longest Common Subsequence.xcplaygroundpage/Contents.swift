final class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let text2 = Array(text2)
        var last = Array(repeating: 0, count: text2.count)
        var new = Array(repeating: 0, count: text2.count)
        
        for char in text1 {
            for i in 0..<text2.count {
                if text2[i] == char {
                    new[i] = get(last, i - 1) + 1
                } else {
                    new[i] = max(last[i], get(new, i - 1))
                }
            }
            last = new
        }
        
        return last.last ?? 0
    }
    
    private func get(_ array: [Int], _ index: Int) -> Int {
        guard index >= 0 else { return 0 }
        return array[index]
    }
}

// Solution().longestCommonSubsequence("ace", "abcde")
// Solution().longestCommonSubsequence("abcbcba", "abcba")
Solution().longestCommonSubsequence("mhunuzqrkzsnidwbun", "szulspmhwpazoxijwbq")
