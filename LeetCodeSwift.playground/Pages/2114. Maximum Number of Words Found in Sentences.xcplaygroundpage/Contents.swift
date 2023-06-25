final class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        sentences.reduce(0, { max($0, $1.reduce(1, { $0 + ($1 == " " ? 1 : 0) })) })
    }
}
