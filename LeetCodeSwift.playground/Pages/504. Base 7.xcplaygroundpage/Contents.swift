final class Solution {
    func convertToBase7(_ initNum: Int) -> String {
        guard initNum != 0 else { return "0" }
        var result = ""
        var num = abs(initNum)
        while num != 0 {
            result += String(num % 7)
            num /= 7
        }
        return (initNum < 0 ? "-" : "") + result.reversed()
    }
}

Solution().convertToBase7(100)
Solution().convertToBase7(-7)
Solution().convertToBase7(9)
Solution().convertToBase7(6)
Solution().convertToBase7(0)
