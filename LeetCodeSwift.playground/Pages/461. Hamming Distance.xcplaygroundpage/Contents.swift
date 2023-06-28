final class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        (x ^ y).nonzeroBitCount
    }
}

Solution().hammingDistance(1, 4)
Solution().hammingDistance(3, 1)
Solution().hammingDistance(3, 3)
