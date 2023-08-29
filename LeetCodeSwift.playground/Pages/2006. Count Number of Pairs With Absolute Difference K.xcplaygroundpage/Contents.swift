final class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var map = [Int: Int]()
        for i in nums { map[i, default: 0] += 1 }
        var result = 0
        for (key, value) in map {
            guard let other = map[key + k] else { continue }
            result += other * value
        }
        return result
    }
}

Solution().countKDifference([1,2,2,1], 1)
Solution().countKDifference([1,3], 3)
Solution().countKDifference([3,2,1,5,4], 2)
