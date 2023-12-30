class Solution {
    func makeEqual(_ words: [String]) -> Bool {
        let n = words.count
        let first = Int(Character("a").asciiValue!)
        var charsCounter = [Int](repeating: 0, count: 26)
        for word in words {
            for char in word {
                charsCounter[Int(char.asciiValue!) - first] += 1
            }
        }

        return charsCounter.reduce(true, { $0 && ($1 % n == 0) })
    }
}

Solution().makeEqual(["abc","aabc","bc"])
Solution().makeEqual(["ab","a"])
