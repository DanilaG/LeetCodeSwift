final class Solution {
    func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var end = [Int]()
        var map = [Int: Int]()
        for i in arr2 {
            map[i] = 0
        }
        
        for i in arr1 {
            if let inMap = map[i] {
                map[i] = inMap + 1
            } else {
                end.append(i)
            }
        }
        
        var result = [Int]()
        for i in arr2 {
            result += Array(repeating: i, count: map[i] ?? 0)
        }
        return result + end.sorted()
    }
}

Solution().relativeSortArray([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6])
Solution().relativeSortArray([28,6,22,8,44,17], [22,28,8,6])
