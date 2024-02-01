final class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        guard temperatures.count > 1 else { return [0] }
        var stack = [0]
        var answer = Array(repeating: 0, count: temperatures.count)
        for i in 1..<temperatures.count {
            while
                let lastIndex = stack.last,
                temperatures[lastIndex] < temperatures[i]
            {
                answer[lastIndex] = i - lastIndex
                stack.popLast()
            }
            stack.append(i)
        }
        return answer
    }
}

Solution().dailyTemperatures([73,74,75,71,69,72,76,73])
