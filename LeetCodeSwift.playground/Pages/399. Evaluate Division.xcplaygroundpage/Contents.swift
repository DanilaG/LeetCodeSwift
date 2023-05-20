final class Solution {
    func calcEquation(_ equations: [[String]], _ values: [Double], _ queries: [[String]]) -> [Double] {
        var val: [String : [(String, Double)]] = [:]
        for i in 0..<equations.count {
            val[equations[i][0], default: []].append((equations[i][1], values[i]))
            val[equations[i][1], default: []].append((equations[i][0], 1 / values[i]))
        }

        return queries.map {
            var visited = Set<[String]>()
            return dfs($0, val, &visited) ?? -1
        }
    }

    private func dfs(_ querie: [String], _ val: [String : [(String, Double)]], _ visited: inout Set<[String]>) -> Double? {
        print(querie)
        guard let nextValues = val[querie[0]] else { return nil }
        guard querie[0] != querie[1] else { return 1 }
        for next in nextValues {
            let current = [querie[0], next.0]
            guard !visited.contains(current) else { continue }
            visited.insert(current)
            if let result = dfs([next.0, querie[1]], val, &visited) {
                visited.remove(current)
                return result * next.1
            }
        }
        return nil
    }
}

Solution().calcEquation(
    [["a","b"],["b","c"]],
    [2.0,3.0],
    [["a","c"],["b","a"],["a","e"],["a","a"],["x","x"],["c","a"]]
)

Solution().calcEquation(
    [["a","b"],["b","c"],["bc","cd"]],
    [1.5,2.5,5.0],
    [["a","c"],["c","b"],["bc","cd"],["cd","bc"]]
)

Solution().calcEquation(
    [["a","b"]],
    [0.5],
    [["a","b"],["b","a"],["a","c"],["x","y"]]
)

Solution().calcEquation(
    [["a","b"],["a","c"],["a","d"],["a","e"],["a","f"],["a","g"],["a","h"],["a","i"],["a","j"],["a","k"],["a","l"],["a","aa"],["a","aaa"],["a","aaaa"],["a","aaaaa"],["a","bb"],["a","bbb"],["a","ff"]],
    [1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,1.0,1.0,1.0,1.0,1.0,3.0,5.0],
    [["l","ll"]]
)
