class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var i = s.makeIterator()
        var j = t.makeIterator()
        
        while let a = i.next(), let b = j.next() {
            if !isSame(a, b) {
                print("\(a) \(b)")
                return false
            }
        }
        
        return true
    }
    
    private var a2b: [Character:Character] = [:]
    private var b2a: [Character:Character] = [:]
    
    private func isSame(_ a: Character, _ b: Character) -> Bool {
        if a2b[a] == nil, b2a[b] == nil  {
            a2b[a] = b
            b2a[b] = a
            return true
        }
        
        return (a2b[a] == b) && (b2a[b] == a)
    }
}

Solution().isIsomorphic("egg", "add")
