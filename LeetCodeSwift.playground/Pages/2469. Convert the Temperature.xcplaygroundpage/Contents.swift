final class Solution {
    func convertTemperature(_ celsius: Double) -> [Double] {
        return [celsius + 273.15, celsius * 1.80 + 32.00]
    }
}

Solution().convertTemperature(36.50)
