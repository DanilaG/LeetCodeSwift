final class Solution {
    func findSubsequences(_ nums: [Int]) -> [[Int]] {
        var result = Set<[Int]>([[]])
        for n in nums {
            result = result.union(result
                .filter({ ($0.last.map({ $0 <= n })) ?? true })
                .map({ $0 + [n] }))
        }
        return result.filter({ $0.count >= 2 })
    }
}


Solution().findSubsequences([4,6,7,7])
Solution().findSubsequences([4,4,3,2,1])
