class Solution {
    func isHappy(_ n: Int) -> Bool {
        var a = n
        var b = sqSum(n)
        
        while a != 1, b != a {
            a = sqSum(a)
            b = sqSum(sqSum(b))
        }
        
        return a == 1
    }
    
    private func sqSum(_ n: Int) -> Int {
        var n = n

        var result = 0
        while n != 0 {
            let digit = n % 10
            result += digit * digit
            n /= 10
        }
        
        return result
    }
}

Solution().isHappy(2)
