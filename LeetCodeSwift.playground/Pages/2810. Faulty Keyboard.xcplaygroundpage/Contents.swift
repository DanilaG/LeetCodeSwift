final class Solution {
    func finalString(_ s: String) -> String {
        var result = ""
        for char in s {
            guard char != "i" else {
                result = String(result.reversed())
                continue
            }
            result.append(char)
        }
        return result
    }
}

Solution().finalString("string")
Solution().finalString("poiinter")
