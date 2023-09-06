final class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        let result = tickets.reduce(0, { $0 + min($1, tickets[k]) })
        guard k < (tickets.count - 1) else { return result }
        return result - tickets[(k + 1)...].filter({ $0 >= tickets[k] }).count
    }
}

Solution().timeRequiredToBuy([2,3,2], 2)
Solution().timeRequiredToBuy([5,1,1,1], 0)
