final class Solution {
    func findDelayedArrivalTime(_ arrivalTime: Int, _ delayedTime: Int) -> Int {
        (arrivalTime + delayedTime) % 24
    }
}

Solution().findDelayedArrivalTime(15, 5)
Solution().findDelayedArrivalTime(13, 11)
