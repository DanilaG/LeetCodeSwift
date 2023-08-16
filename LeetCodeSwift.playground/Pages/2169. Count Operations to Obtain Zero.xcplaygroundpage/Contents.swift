final class Solution {
    func countOperations(_ num1: Int, _ num2: Int) -> Int {
        guard num1 != 0, num2 != 0 else { return 0 }
        if num1 >= num2 {
            return countOperations(num1 - num2, num2) + 1
        } else {
            return countOperations(num1, num2 - num1) + 1
        }
    }
}

Solution().countOperations(2, 3)
Solution().countOperations(10, 10)
