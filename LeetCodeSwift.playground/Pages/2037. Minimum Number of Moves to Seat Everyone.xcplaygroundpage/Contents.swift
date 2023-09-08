final class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
        zip(seats.sorted(), students.sorted()).reduce(0, { $0 + abs($1.0 - $1.1) })
    }
}

Solution().minMovesToSeat([3,1,5], [2,7,4])
Solution().minMovesToSeat([4,1,5,9], [1,3,2,6])
Solution().minMovesToSeat([2,2,6,6], [1,3,2,6])
