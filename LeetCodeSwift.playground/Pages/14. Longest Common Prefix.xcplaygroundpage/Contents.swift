final class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 1 else { return strs.first ?? "" }
        var first = strs.first!.makeIterator()
        var iterators = strs[1...].map { $0.makeIterator() }
        var result = ""
        
        while let char = first.next() {
            for i in 0..<iterators.count {
                guard char == iterators[i].next() else { return result }
            }
            result.append(char)
        }
        
        return result
    }
}

// Solution().longestCommonPrefix(["flower","flow","flight"])
Solution().longestCommonPrefix(["dog","racecar","car"])
