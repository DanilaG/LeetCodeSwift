final class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var way = [Int]()
        return sumNoMore(candidates.sorted(), index: 0, way: &way, sum: 0, target: target) ?? []
    }
    
    func sumNoMore(_ candidates: [Int], index: Int, way: inout [Int], sum: Int, target: Int) -> [[Int]]? {
        guard sum < target, index < candidates.count  else {
            return sum == target ? [way] : nil
        }
        
        var result = [[Int]]()
        for i in index..<candidates.count {
            if i > 0 && candidates[i] == candidates[i - 1] && i != index {
                continue
            }
            way.append(candidates[i])
            if let temp = sumNoMore(candidates, index: i + 1, way: &way, sum: sum + candidates[i], target: target) {
                result += temp
            }
            way.removeLast()
        }
        
        return result
    }
}

Solution().combinationSum2([2,5,2,1,2], 5)
