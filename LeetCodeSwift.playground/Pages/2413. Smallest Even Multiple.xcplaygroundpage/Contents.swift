final class Solution {
    func smallestEvenMultiple(_ n: Int) -> Int {
        (n % 2 == 1) ? (n * 2) : n
    }
}

Solution().smallestEvenMultiple(5)
Solution().smallestEvenMultiple(6)
