final class Solution {
    func sortColors(_ nums: inout [Int]) {
        var zero = 0
        var one = 0
        var two = 0

        for n in nums {
            if n == 0 {
                zero += 1
            } else if n == 1 {
                one += 1
            } else {
                two += 1
            }
        }

        nums = Array(repeating: 0, count: zero) + Array(repeating: 1, count: one) + Array(repeating: 2, count: two)
    }
}

var r = [2,0,2,1,1,0]
Solution().sortColors(&r)
