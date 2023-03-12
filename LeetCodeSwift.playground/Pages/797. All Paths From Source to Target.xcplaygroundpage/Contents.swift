final class Solution {
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        var graph = graph
        var backtrace = [0]
        return ways(from: 0, for: &graph, &backtrace)
    }
    
    private func ways(from nodeIndex: Int, for graph: inout [[Int]], _ backtrace: inout [Int]) -> [[Int]] {
        guard nodeIndex < (graph.count - 1) else { return  [backtrace] }
        
        let node = graph[nodeIndex]
        
        var result = [[Int]]()
        for next in node {
            backtrace.append(next)
            result += ways(from: next, for: &graph, &backtrace)
            backtrace.removeLast()
        }
        graph[nodeIndex] = node
        return result
    }
}

Solution().allPathsSourceTarget([[1,2],[3],[3],[]])
// Solution().allPathsSourceTarget([[4,3,1],[3,2,4],[3],[4],[]])
