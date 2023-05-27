class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var a = n
        while a > 1 {
            guard (a % 2 == 0 || a == 1) else { return false }
            a /= 2
            print(a)
        }
        return true
    }
}

Solution().isPowerOfTwo(16)
