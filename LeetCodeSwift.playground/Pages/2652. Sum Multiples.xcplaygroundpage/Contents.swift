final class Solution {
    func sumOfMultiples(_ n: Int) -> Int {
        ([Int](1...n)).reduce(0, {
            $0 + ((($1 % 3 == 0) || ($1 % 5 == 0) || ($1 % 7 == 0)) ? $1 : 0)
        })
    }
}

Solution().sumOfMultiples(7)
Solution().sumOfMultiples(10)
Solution().sumOfMultiples(9)
