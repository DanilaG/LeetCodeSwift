final class Solution {
    func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
        var map = [Character: Int]()
        var result = -1
        var index = 0
        
        for char in s {
            defer { index += 1 }
            if let pervious = map[char] {
                result = max(result, index - pervious - 1)
            } else {
                map[char] = index
            }
        }
        
        return result
    }
}

Solution().maxLengthBetweenEqualCharacters("aa")
Solution().maxLengthBetweenEqualCharacters("abca")
Solution().maxLengthBetweenEqualCharacters("cbzxy")
Solution().maxLengthBetweenEqualCharacters("mgntdygtxrvxjnwksqhxuxtrv")
