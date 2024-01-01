final class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let g = g.sorted()
        let s = s.sorted()
        
        var sIndex = 0
        var gIndex = 0
        var result = 0
        all: while sIndex < s.count, gIndex < g.count {
            while s[sIndex] < g[gIndex] {
                sIndex += 1
                guard sIndex < s.count else { break all }
            }
            result += 1
            sIndex += 1
            gIndex += 1
        }
        
        return result
    }
}

//Solution().findContentChildren([1,2,3], [1,1])
Solution().findContentChildren([1,2], [1,2,3])
