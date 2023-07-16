final class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var new = [Int]()
        
        for interval in intervals {
            if interval[0] <= newInterval[0] && newInterval[0] <= interval[1] {
                new.append(interval[0])
                break
            }
            
            if newInterval[0] < interval[0] {
                new.append(newInterval[0])
                break
            }
        }
        if new.count < 1 {
            new.append(newInterval[0])
        }
        
        for interval in intervals {
            if interval[0] <= newInterval[1] && newInterval[1] <= interval[1] {
                new.append(interval[1])
                break
            }
            
            if newInterval[1] < interval[0] {
                new.append(newInterval[1])
                break
            }
        }
        if new.count < 2 {
            new.append(newInterval[1])
        }

        var result = [[Int]]()
        var addNew = false
        for interval in intervals {
            if new[0] <= interval[0] && interval[1] <= new[1]{
                if !addNew {
                    result.append(new)
                    addNew = true
                }
                continue
            }
            if new[1] <= interval[0] && !addNew {
                result.append(new)
                addNew = true
            }
            result.append(interval)
        }
        if !addNew {
            result.append(new)
        }
        return result
    }
}

Solution().insert([[1,3],[6,9]], [2,5])
Solution().insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8])
Solution().insert([[1,3],[6,9]], [-1,0])
 Solution().insert([[1,3],[6,9]], [-1,10])
 Solution().insert([[1,3],[6,9]], [10,11])
Solution().insert([[1,3],[6,9]], [-1,1])
Solution().insert([[1,3],[6,9]], [9,11])
Solution().insert([[0,0],[1,4],[6,8],[9,11]], [0,9])
