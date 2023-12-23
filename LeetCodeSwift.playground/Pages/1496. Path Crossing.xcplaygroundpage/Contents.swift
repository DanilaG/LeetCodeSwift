struct Point: Hashable {
    let x: Int
    let y: Int
}

class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        var last = Point(x: 0, y: 0)
        var visited = Set<Point>([last])

        for i in path {
            switch i {
                case "N":
                    last = .init(x: last.x, y: last.y + 1)
                case "E":
                    last = .init(x: last.x + 1, y: last.y)
                case "S":
                    last = .init(x: last.x, y: last.y - 1)
                case "W":
                    last = .init(x: last.x - 1, y: last.y)
                default:
                    break
            }
            guard !visited.contains(last) else {
                return true
            }
            visited.insert(last)
        }

        return false
    }
}

Solution().isPathCrossing("NES")
Solution().isPathCrossing("NESWW")
