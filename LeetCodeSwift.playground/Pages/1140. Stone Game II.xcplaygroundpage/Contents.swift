class Solution {
    func stoneGameII(_ piles: [Int]) -> Int {
        let n = piles.count
        var cash = [[Int] : Int]()
        func count(isAlice: Bool, i: Int, m: Int) -> Int {
            guard i < n else { return 0 }
            let cashedVal = [isAlice ? 1 : 0, i, m]
            if let result = cash[cashedVal] {
                return result
            }
            var result = isAlice ? Int.min : Int.max
            var sum = 0
            for j in 1...min(2 * m, n - i) {
                sum += piles[i + j - 1]
                let nextM = max(m, j)
                if isAlice {
                    result = max(result, sum + count(isAlice: false, i: i + j, m: nextM))
                } else {
                    result = min(result, count(isAlice: true, i: i + j, m: nextM))
                }
            }
            cash[cashedVal] = result
            return result
        }
        return count(isAlice: true, i: 0, m: 1)
    }
}

Solution().stoneGameII([2,7,9,4,4])
Solution().stoneGameII([1,2,3,4,5,100])
