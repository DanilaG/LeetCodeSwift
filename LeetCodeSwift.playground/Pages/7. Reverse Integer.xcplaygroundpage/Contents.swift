final class Solution {
    func reverse(_ x: Int) -> Int {
        var val = UInt32(x == Int32.min ? (UInt32(Int32.max) + 1) : UInt32(abs(x)))
        var result: UInt32 = 0
        
        let maxLastStep = UInt32.max / 10
        
        while val > 0 {
            if result == maxLastStep {
                guard (val % 10) <= (UInt32.max % 10) else {
                    return 0
                }
            }
            
            guard result < maxLastStep else {
                return 0
            }
            
            result = result * 10
            result += val % 10
            val /= 10
        }

        if x < 0 {
            guard result <= (UInt32(Int32.max) + 1) else {
                return 0
            }
            return Int(result) * -1
        }

        guard result <= UInt32(Int32.max) else {
            return 0
        }
        return Int(result)
    }
}

Solution().reverse(1534236469)
