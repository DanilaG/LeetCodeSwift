final class Solution {
    func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
        guard !firstList.isEmpty, !secondList.isEmpty else { return [] }
        
        var indexFirst = 0
        var indexSecond = 0
        
        var result: [[Int]] = []
        
        let n = firstList.count
        let m = secondList.count
        
        while indexFirst < n && indexSecond < m  {
            let startFirst = firstList[indexFirst][0]
            let endFirst = firstList[indexFirst][1]
            let startSecond = secondList[indexSecond][0]
            let endSecond = secondList[indexSecond][1]
            
            if startFirst <= startSecond {
                if startSecond <= endFirst {
                    if endSecond <= endFirst {
                        result.append([startSecond, endSecond])
                        indexSecond += 1
                    } else {
                        result.append([startSecond, endFirst])
                        indexFirst += 1
                    }
                } else {
                    indexFirst += 1
                }
            } else {
                if startFirst <= endSecond {
                    if endFirst <= endSecond {
                        result.append([startFirst, endFirst])
                        indexFirst += 1
                    } else {
                        result.append([startFirst, endSecond])
                        indexSecond += 1
                    }
                } else {
                    indexSecond += 1
                }
            }
        }
        return result
    }
}

Solution().intervalIntersection([[14,16]], [[7,13],[16,20]])
