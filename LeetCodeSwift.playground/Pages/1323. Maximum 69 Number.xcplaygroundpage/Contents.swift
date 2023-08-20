final class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var str = String(num)
        guard let first = str.firstIndex(where: { $0 == "6" }) else { return num }
        str.remove(at: first)
        return Int("9" + str)!
    }
}

Solution().maximum69Number(9669)
Solution().maximum69Number(9996)
Solution().maximum69Number(9999)
