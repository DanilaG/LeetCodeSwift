class Solution {
    func minOperations(_ s: String) -> Int {
        var counter = 0
        var startFromZero = 0
        var startFromOne = 0
        for char in s {
            if counter % 2 == 0 {
                if char != "0" {
                    startFromZero += 1
                } else {
                    startFromOne += 1
                }
            } else {
                if char != "1" {
                    startFromZero += 1
                } else {
                    startFromOne += 1
                }
            }
            counter += 1
        }
        return min(startFromZero, startFromOne)
    }
}

Solution().minOperations("0100")
Solution().minOperations("01")
Solution().minOperations("1111")
