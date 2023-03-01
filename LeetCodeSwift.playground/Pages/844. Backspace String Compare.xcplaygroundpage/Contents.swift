class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)
        var sIndex = s.count - 1
        var tIndex = t.count - 1
        
        while (sIndex >= 0 && tIndex >= 0) {
            sIndex = skip(s: s, index: sIndex)
            tIndex = skip(s: t, index: tIndex)
            
            guard sIndex >= 0, tIndex >= 0 else { break }
            
            if s[sIndex] != t[tIndex] {
                return false
            }
            sIndex -= 1
            tIndex -= 1
        }
        
        if sIndex >= 0 {
            sIndex = skip(s: s, index: sIndex)
        }
        
        if tIndex >= 0 {
            tIndex = skip(s: t, index: tIndex)
        }
        
        return sIndex == tIndex
    }
    
    private func skip(s: Array<Character>, index: Int) -> Int {
        var index = index
        var counter = 0

        while index >= 0, (s[index] == "#" || counter > 0) {
            counter += s[index] == "#" ? 1 : -1
            index -= 1
        }

        return index
    }
}

Solution().backspaceCompare("nzp#o#g", "b#nzp#o#g")
