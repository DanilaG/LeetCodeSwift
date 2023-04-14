final class Solution {
    func addBinary(_ aS: String, _ bS: String) -> String {
        var n = max(aS.count, bS.count)
        var a = Array<Character>(repeating: "0", count: n - aS.count) + Array<Character>(aS)
        var b = Array<Character>(repeating: "0", count: n - bS.count) + Array<Character>(bS)
        var result = Array<Character>(repeating: "0", count: n)
        var offset = false

        for i in stride(from: n - 1, through: 0, by: -1) {
            if
                (a[i] == b[i] && offset) ||
                (a[i] != b[i] && !offset)
            {
                result[i] = "1"
            }
            
            offset = (a[i] == "1" && b[i] == "1") || ((a[i] == "1" || b[i] == "1") && offset)
        }
        
        return (offset ? "1" : "") + String(result)
    }
}

// Solution().addBinary("11", "1")
Solution().addBinary("1010", "1011")
