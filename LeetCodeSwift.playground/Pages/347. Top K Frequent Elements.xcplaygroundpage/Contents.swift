final class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var counter = [Int : Int]()
        nums.forEach { counter[$0, default: 0] += 1 }
        var result = [Int]()
        return Array(counter.sorted(by: { $0.1 > $1.1 }).map({ $0.0 })[0..<k])
    }
}

Solution().topKFrequent([3, 4, 3, 3, 1, 3, 1,1,2,2,3], 2)
Solution().topKFrequent([1], 1)
