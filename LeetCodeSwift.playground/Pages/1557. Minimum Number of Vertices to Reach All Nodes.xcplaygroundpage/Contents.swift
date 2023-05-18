final class Solution {
    func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
        let result = Set<Int>(0..<n)
        let children = Set<Int>(edges.map { $0[1] })
        return [Int](result.subtracting(children))
    }
}

Solution().findSmallestSetOfVertices(6, [[0,1],[0,2],[2,5],[3,4],[4,2]])
Solution().findSmallestSetOfVertices(5, [[0,1],[2,1],[3,1],[1,4],[2,4]])
