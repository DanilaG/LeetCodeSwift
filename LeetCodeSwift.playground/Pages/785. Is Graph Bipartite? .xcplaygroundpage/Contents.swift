//final class Solution {
//    func isBipartite(_ graph: [[Int]]) -> Bool {
//        var nodesSetIsA = Array<Bool?>(repeating: nil, count: graph.count)
//        let first = graph.firstIndex(where: { !$0.isEmpty }) ?? 0
//        nodesSetIsA[first] = true
//        var isASet = true
//        var needUpdate = Set<Int>(graph[first])
//        var new: Set<Int>
//        while !needUpdate.isEmpty {
//            isASet = !isASet
//            new = []
//            for node in needUpdate {
//
//                if let setType = nodesSetIsA[node] {
//                    if setType != isASet {
//                        return false
//                    }
//                } else {
//                    new.formUnion(graph[node])
//                }
//                nodesSetIsA[node] = isASet
//            }
//            needUpdate = new
//        }
//        return true
//    }
//}

final class Solution {
    func isBipartite(_ graph: [[Int]]) -> Bool {
        var nodesSetIsA = Array<Bool?>(repeating: nil, count: graph.count)
        for i in 0..<graph.count where nodesSetIsA[i] == nil {
            guard setSet(i, graph, &nodesSetIsA, true) else { return false }
        }
        return true
    }
    
    private func setSet(_ index: Int, _ graph: [[Int]], _ nodesSetIsA: inout Array<Bool?>, _ isA: Bool) -> Bool {
        guard nodesSetIsA[index] == nil else { return isA == nodesSetIsA[index] }
        
        nodesSetIsA[index] = isA
        for node in graph[index] {
            guard setSet(node, graph, &nodesSetIsA, !isA) else { return false }
        }
        return true
    }
}

Solution().isBipartite([[1],[0,3],[3],[1,2]])
Solution().isBipartite([[1,2,3],[0,2],[0,1,3],[0,2]])
Solution().isBipartite([[1,3],[0,2],[1,3],[0,2]])
Solution().isBipartite([[],[2,4,6],[1,4,8,9],[7,8],[1,2,8,9],[6,9],[1,5,7,8,9],[3,6,9],[2,3,4,6,9],[2,4,5,6,7,8]])
