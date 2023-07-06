final class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var result = Array(repeating: "", count: score.count)
        score.enumerated().sorted(by: { $0.1 > $1.1 }).map({ $0.0 }).enumerated().forEach {
            result[$0.1] = String($0.0 + 1)
        }
        return result.map {
            if $0 == "1" {
                return "Gold Medal"
            } else if $0 == "2" {
                return "Silver Medal"
            }  else if $0 == "3" {
                return "Bronze Medal"
            } else {
                return $0
            }
        }
    }
}

Solution().findRelativeRanks([5,4,3,2,1])
Solution().findRelativeRanks([10,3,8,9,4])
