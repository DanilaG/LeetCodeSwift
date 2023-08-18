final class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var stones = stones
        while stones.count > 1 {
            stones.sort()
            let last = stones.removeLast()
            stones[stones.count - 1] = last - stones[stones.count - 1]
        }
        return stones.first!
    }
}

Solution().lastStoneWeight([2,7,4,1,8,1])
