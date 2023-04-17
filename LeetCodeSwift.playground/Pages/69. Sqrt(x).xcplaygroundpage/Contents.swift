final class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x != 0 else { return 0 }
        guard x != 1 else { return 1 }

        var left = 0
        var right = x / 2
        var mead = 0
        while left < right {
            mead = (right - left) / 2 + left
            if mead * mead < x {
                left = mead + 1
            } else {
                right = mead
            }
        }

        return left + (((left * left) > x) ? -1 : 0)
    }
}

Solution().mySqrt(4)
Solution().mySqrt(8)
