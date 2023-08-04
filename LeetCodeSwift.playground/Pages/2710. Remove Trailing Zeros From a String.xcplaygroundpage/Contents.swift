final class Solution {
    func removeTrailingZeros(_ num: String) -> String {
        guard let last = num.lastIndex(where: { $0 != "0" }) else { return "" }
        return String(num[...last])
    }
}

Solution().removeTrailingZeros("51230100")
Solution().removeTrailingZeros("123")

