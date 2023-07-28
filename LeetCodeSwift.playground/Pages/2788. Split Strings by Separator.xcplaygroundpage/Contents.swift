final class Solution {
    func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
        let words: [String] = words.reduce([String](), {
            let result: [String] = $1.split(separator: separator).map({ String($0) })
            return $0 + result
        })
        return words.filter({ !$0.isEmpty })
    }
}

Solution().splitWordsBySeparator(["one.two.three","four.five","six"], ".")
Solution().splitWordsBySeparator(["$easy$","$problem$"], "$")
Solution().splitWordsBySeparator(["|||"], "|")
