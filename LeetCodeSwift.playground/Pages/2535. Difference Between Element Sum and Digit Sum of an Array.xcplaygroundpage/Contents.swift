final class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        nums.reduce(0, +) - nums.reduce(0, { $0 +  digitSum($1) })
    }
    
    private func digitSum(_ n: Int) -> Int {
        var n = n
        var result = 0
        while n > 0 {
            result += n % 10
            n /= 10
        }
        return result
    }
}

Solution().differenceOfSum([1,15,6,3])
Solution().differenceOfSum([1,2,3,4])
