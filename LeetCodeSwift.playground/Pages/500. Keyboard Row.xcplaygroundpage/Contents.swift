final class Solution {
    func findWords(_ words: [String]) -> [String] {
        var map = [Character: Int]()
        "qwertyuiop".forEach { map[$0] = 1 }
        "asdfghjkl".forEach { map[$0] = 2 }
        "zxcvbnm".forEach { map[$0] = 3 }

        func checkWord(_ word: String) -> Bool {
            var type: Int?
            for char in word {
                guard let type = type else {
                    type = map[char]
                    continue
                }
                guard type == map[char] else { return false }
            }
            return true
        }

        var result = [String]()
        for word in words where checkWord(word.lowercased()) {
            result.append(word)
        }
        return result
    }
}

//Solution().findWords(["Hello","Alaska","Dad","Peace"])
//Solution().findWords(["omk"])
//Solution().findWords(["adsdf","sfd"])
Solution().findWords(["Aasdfghjkl","Qwertyuiop","zZxcvbnm"])
