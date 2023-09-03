final class Solution {
    func minimumCost(_ cost: [Int]) -> Int {
        var costs = cost.sorted()
        var result = 0
        while !costs.isEmpty {
            result += costs.removeLast()
            guard !costs.isEmpty else { break }
            result += costs.removeLast()
            guard !costs.isEmpty else { break }
            costs.removeLast()
        }
        return result
    }
}

Solution().minimumCost([1,2,3])
Solution().minimumCost([6,5,7,9,2,2])
Solution().minimumCost([5,5])

