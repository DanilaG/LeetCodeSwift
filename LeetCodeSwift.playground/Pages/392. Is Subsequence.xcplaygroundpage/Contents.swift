class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard !s.isEmpty else { return true }
        
        var i = s.makeIterator()
        var j = t.makeIterator()
        
        var currentChar = i.next()
        
        while let k = j.next() {
            if currentChar == k {
                currentChar = i.next()
                if currentChar == nil {
                    return true
                }
            }
        }
        
        return false
    }
}

Solution().isSubsequence("axc", "ahbgdc")
