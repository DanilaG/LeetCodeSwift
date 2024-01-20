final class Solution {
    func sumSubarrayMins(_ arr: [Int]) -> Int {
        let mod = 1_000_000_007
        var stack = [Int]()
        var result = 0
        
        for i in 0...arr.count {
            while
                let mid = stack.last,
                (i == arr.count || arr[mid] >= arr[i])
            {
                stack.removeLast()
                let last = stack.last ?? -1
                let sum = (mid - last) * (i - mid) * arr[mid] % mod
                result = (result + sum) % mod
            }
            stack.append(i)
        }
        
        return result
    }
}

Solution().sumSubarrayMins([3, 1, 2, 4])
