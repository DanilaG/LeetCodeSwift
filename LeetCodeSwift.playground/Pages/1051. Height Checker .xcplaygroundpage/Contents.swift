final class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        zip(heights.sorted(), heights).reduce(0, { $0 + ($1.0 != $1.1 ? 1 : 0) })
    }
}

Solution().heightChecker([1,1,4,2,1,3])
Solution().heightChecker([5,1,2,3,4])
Solution().heightChecker([1,2,3,4,5])
