class Solution {
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var distance = [Int: (Int, Int)]()
        var result = 0
        
        for i in 0..<points.count {
            let a = points[i]
            for j in 0..<points.count where i != j {
                let b = points[j]
                let diffX = a[0] - b[0]
                let diffY = a[1] - b[1]
                let dist = diffX * diffX + diffY * diffY
                
                if let old = distance[dist] {
                    distance[dist] = (old.0 + 1, old.0 * (old.0 + 1))
                } else {
                    distance[dist] = (1, 1)
                }
            }
            result = distance.reduce(result, { $0 + ($1.value.1 > 1 ? $1.value.1 : 0) })
            distance.removeAll()
        }
        
        return result
    }
}

//Solution().numberOfBoomerangs([[0,0],[1,0],[2,0]])
//Solution().numberOfBoomerangs([[1,1],[2,2],[3,3]])
// Solution().numberOfBoomerangs([[1,1]])
Solution().numberOfBoomerangs([[0,0],[1,0],[-1,0],[0,1],[0,-1]])
