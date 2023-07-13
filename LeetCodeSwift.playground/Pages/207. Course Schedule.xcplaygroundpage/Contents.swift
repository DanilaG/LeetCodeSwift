final class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var prerequisitesNumber = Array(repeating: 0, count: numCourses)
        var locks = Array(repeating: [Int](), count: numCourses)
        
        for i in prerequisites {
            prerequisitesNumber[i[0]] += 1
            locks[i[1]].append(i[0])
        }
        
        for i in 0..<numCourses {
            remove(i, &prerequisitesNumber, &locks)
        }
        
        return prerequisitesNumber.first(where: { $0 != 0 }) == nil
    }
    
    private func remove(_ i: Int, _ prerequisitesNumber: inout [Int], _ locks: inout [[Int]]) {
        guard prerequisitesNumber[i] == 0 else { return }
        for unlock in locks[i] {
            prerequisitesNumber[unlock] -= 1
            remove(unlock, &prerequisitesNumber, &locks)
        }
        locks[i] = []
    }
}

Solution().canFinish(2, [[1,0]])
Solution().canFinish(2, [[1,0],[0,1]])
