final class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        hours.reduce(0, { $0 + ($1 >= target ? 1 : 0) })
    }
}

Solution().numberOfEmployeesWhoMetTarget([0,1,2,3,4], 2)
Solution().numberOfEmployeesWhoMetTarget([5,1,4,2,2], 6)
