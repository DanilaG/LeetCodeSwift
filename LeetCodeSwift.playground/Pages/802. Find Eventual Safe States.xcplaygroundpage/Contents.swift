final class Solution {
    func eventualSafeNodes(_ graph: [[Int]]) -> [Int] {
        var counter = graph.map { $0.count }
        var reversed = Array(repeating: [Int](), count: graph.count)
        for (i, elements) in graph.enumerated() {
            for j in elements {
                reversed[j].append(i)
            }
        }
        
        for i in 0..<graph.count {
            remove(i, &counter, &reversed)
        }
        
        return counter.enumerated().filter({ $0.1 == 0 }).map({ $0.0 })
    }
    
    private func remove(_ i: Int, _ counter: inout [Int], _ reversed: inout [[Int]]) {
        guard counter[i] == 0 else { return }
        for element in reversed[i] {
            counter[element] -= 1
            remove(element, &counter, &reversed)
        }
        reversed[i] = []
    }
}

Solution().eventualSafeNodes([[1,2],[2,3],[5],[0],[5],[],[]])

Solution().eventualSafeNodes([[1,2,3,4],[1,2],[3,4],[0,4],[]])
