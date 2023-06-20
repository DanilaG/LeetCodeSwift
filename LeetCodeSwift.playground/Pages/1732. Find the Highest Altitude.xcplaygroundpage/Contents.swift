final class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var start = 0
        var maxVal = 0
        for i in gain {
            start += i
            maxVal = max(maxVal, start)
        }
        return maxVal
    }
}

Solution().largestAltitude([-5,1,5,0,-7])
Solution().largestAltitude([-4,-3,-2,-1,4,3,2])
