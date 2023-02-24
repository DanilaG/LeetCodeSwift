final class Solution {
    
    private enum Errors: Error {
        case emptyArray
    }
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let numberRaws = matrix.count
        
        guard
            let numberColumns = matrix.first?.count,
            numberColumns != 0
        else { return false }

        var left = 0
        var right = numberRaws * numberColumns - 1
        
        while left < right {
            var mean = left + (right - left) / 2
            let val = (try? get(mean, in: matrix)) ?? -1
            val < target ? (left = mean + 1) : (right = mean)
        }
                
        return ((try? get(left, in: matrix)) ?? -1) == target
    }
    
    private func get(_ element: Int, in matrix: [[Int]]) throws -> Int {
        guard let numberColumns = matrix.first?.count, numberColumns != 0 else { throw Errors.emptyArray }
        let raw = element / numberColumns
        let column = element % numberColumns
        return matrix[raw][column]
    }
}

Solution().searchMatrix([[1,1]], 2)
