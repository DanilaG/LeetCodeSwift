final class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var map = [Int:Int]()
        for num in arr {
            map[num, default: 0] += 1
        }
        
        let values = map.values
        return Set(values).count == values.count
    }
}

Solution().uniqueOccurrences([1,2,2,1,1,3])
