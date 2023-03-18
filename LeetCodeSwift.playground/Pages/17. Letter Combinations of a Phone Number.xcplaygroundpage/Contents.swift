final class Solution {
    static private let map: [[Character]] = [
        ["a", "b", "c"],
        ["d", "e", "f"],
        ["g", "h", "i"],
        ["j", "k", "l"],
        ["m", "n", "o"],
        ["p", "q", "r", "s"],
        ["t", "u", "v"],
        ["w", "x", "y", "z"]
    ]
    
    func letterCombinations(_ digits: String) -> [String] {
        return make(
            digits.map { Int(String($0))! },
            0
        )
    }
    
    private func make(_ digits: [Int], _ index: Int) -> [String] {
        guard index < digits.count else { return [] }
        
        var result = [String]()
        var suffix = make(digits, index + 1)
        if suffix.isEmpty { suffix = [""] }
        
        for char in Solution.map[digits[index] - 2] {
            for j in 0..<suffix.count {
                result.append(
                    String(char) + suffix[j]
                )
            }
        }
        
        return result
    }
}

Solution().letterCombinations("23")
