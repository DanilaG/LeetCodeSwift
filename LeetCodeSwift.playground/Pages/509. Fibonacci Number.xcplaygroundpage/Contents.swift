final class Solution {
    func fib(_ n: Int) -> Int {
        guard n != 0 else { return 0 }
        guard n != 1 else { return 1 }
        
        var last = 0
        var current = 1
        var buff = 0
        for i in 1...(n - 1) {
            buff = last
            last = current
            current += buff
        }
        
        return current
    }
}

Solution().fib(4)
