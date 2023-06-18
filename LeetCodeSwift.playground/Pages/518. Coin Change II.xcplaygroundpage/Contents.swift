final class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        guard amount > 0 else { return 1 }
        let coins = coins.sorted()
        var values = Array(repeating: Array(repeating: 0, count: coins.count), count: amount + 1)
        values[0] = Array(repeating: 1, count: coins.count)
        for i in 1...amount {
            for j in (0..<coins.count).reversed() {
                values[i][j] += ((i - coins[j]) >= 0) ? values[i - coins[j]][j] : 0
                values[i][j] += ((j + 1) < coins.count) ? values[i][j + 1] : 0
            }
        }
        return values[amount].first!
    }
}

// Solution().change(5, [1, 2, 5])
Solution().change(3, [2])
Solution().change(10, [10])
