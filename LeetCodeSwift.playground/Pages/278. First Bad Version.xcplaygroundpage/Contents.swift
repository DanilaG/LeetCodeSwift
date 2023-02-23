
func isBadVersion(_ version: Int) -> Bool { false }

class Solution {
    func firstBadVersion(_ n: Int) -> Int {
        var leftBound = 1
        var rightBound = n
        
        guard !isBadVersion(leftBound) else { return leftBound }
        
        while (rightBound - leftBound) > 1 {
            let mid = (rightBound - leftBound) / 2 + leftBound
            if isBadVersion(mid) {
                rightBound = mid
            } else {
                leftBound = mid
            }
        }
        
        return rightBound
    }
}
