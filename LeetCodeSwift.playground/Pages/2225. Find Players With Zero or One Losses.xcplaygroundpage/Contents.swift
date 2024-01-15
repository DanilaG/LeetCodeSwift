final class Solution {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
        var noLose = Set(matches.flatMap({ $0 }))
        var oneLose = noLose
        
        for match in matches {
            if noLose.contains(match[1]) {
                noLose.remove(match[1])
            } else {
                oneLose.remove(match[1])
            }
        }
        
        return [Array(noLose).sorted(), Array(oneLose.subtracting(noLose)).sorted()]
    }
}
