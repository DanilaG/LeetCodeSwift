final class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
      zip(startTime, endTime).reduce(0, {
          $0 + (($1.0 <= queryTime && queryTime <= $1.1) ? 1 : 0)
      })
    }
}

Solution().busyStudent([1,2,3], [3,2,7], 4)
Solution().busyStudent([4], [4], 4)
