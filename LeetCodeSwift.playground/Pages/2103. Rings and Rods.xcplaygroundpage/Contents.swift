final class Solution {
    func countPoints(_ rings: String) -> Int {
        var r = Array(repeating: false, count: 10)
        var g = Array(repeating: false, count: 10)
        var b = Array(repeating: false, count: 10)
        
        var iterator = rings.makeIterator()
        var color: Character? = iterator.next()
        var rod: Character? = iterator.next()
        
        while let _color = color, let _rod = rod.flatMap({ Int(String($0)) }) {
            switch _color {
            case "R":
                r[_rod] = true
            case "G":
                g[_rod] = true
            case "B":
                b[_rod] = true
            default:
                continue
            }
            color = iterator.next()
            rod = iterator.next()
        }
        
        var counter = 0
        for i in 0...9 where r[i] && g[i] && b[i] {
            counter += 1
        }
        
        return counter
    }
}

Solution().countPoints("B0B6G0R6R0R6G9")
Solution().countPoints("B0R0G0R9R0B0G0")
Solution().countPoints("G4")
