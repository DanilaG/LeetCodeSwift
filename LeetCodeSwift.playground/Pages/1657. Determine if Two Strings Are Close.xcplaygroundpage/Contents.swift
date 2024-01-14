final class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        Set(word1) == Set(word2) && chunks(word1) == chunks(word2)
    }
    
    private func chunks(_ s: String) -> [Int:Int] {
        var counter = [Character:Int]()
        for char in s {
            counter[char, default: 0] += 1
        }
        var result = [Int:Int]()
        for number in counter.values {
            result[number, default: 0] += 1
        }
        return result
    }
}

//Solution().closeStrings("abc", "bca")
//Solution().closeStrings("a", "aa")
//Solution().closeStrings("cabbba", "abbccc")
Solution().closeStrings("uau", "ssx")
