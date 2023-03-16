final class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var way = [Int]()
        return sumNoMore(candidates, index: 0, way: &way, sum: 0, target: target) ?? []
    }
    
    func sumNoMore(_ candidates: [Int], index: Int, way: inout [Int], sum: Int, target: Int) -> [[Int]]? {
        guard sum < target else {
            return sum == target ? [way] : nil
        }
        
        var result = [[Int]]()
        for i in index..<candidates.count {
            way.append(candidates[i])
            if let temp = sumNoMore(candidates, index: i, way: &way, sum: sum + candidates[i], target: target) {
                result += temp
            }
            way.removeLast()
        }
        
        return result
    }
}

Solution().combinationSum([2], 1)
