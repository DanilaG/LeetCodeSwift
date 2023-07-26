import Foundation

class Solution {
    func minSpeedOnTime(_ dist: [Int], _ hour: Double) -> Int {
        var left = 1
        var right = Int(Int32.max)
        
        while (right - left) > 0 {
            let mid = left + (right - left) / 2
            let time = calculateTime(dist, mid)
            if time > hour {
                left = mid + 1
            } else {
                right = mid
            }
        }
        guard calculateTime(dist, left) <= hour else { return -1 }
        return left
    }
    
    private func calculateTime(_ dist: [Int], _ speed: Int) -> Double {
        let dSpeed = Double(speed)
        var result = 0.0
        if dist.count > 1 {
            result = dist[..<(dist.count - 1)].reduce(0.0, {
                $0 + (ceil(Double($1) / dSpeed))
            })
        }
        result += Double(dist.last!) / dSpeed
        return result
    }
}

//Solution().minSpeedOnTime([1,3,2], 6)
//Solution().minSpeedOnTime([1,3,2], 2.7)
//Solution().minSpeedOnTime([1,3,2], 1.9)
Solution().minSpeedOnTime([1,1,100000], 2.01)
