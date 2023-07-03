final class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var counter = Array(repeating: 0, count: 26)
        let startIndex: Int = 97
        s.forEach {
            counter[Int(($0).asciiValue!) - startIndex] += 1
        }
        t.forEach {
            counter[Int(($0).asciiValue!) - startIndex] -= 1
        }
        return Character(UnicodeScalar(counter.firstIndex(where: { $0 < 0 })! + startIndex)!)
    }
}

Solution().findTheDifference("abcd", "abcde")
Solution().findTheDifference("", "y")
