final class Solution {
    func minimumSum(_ num: Int) -> Int {
        var num = num
        var digits = [Int]()
        while num != 0 {
            digits.append(num % 10)
            num /= 10
        }
        digits.sort()
        return (digits[0] + digits[1]) * 10 + (digits[2] + digits[3])
    }
}

Solution().minimumSum(2932)
Solution().minimumSum(4009)
