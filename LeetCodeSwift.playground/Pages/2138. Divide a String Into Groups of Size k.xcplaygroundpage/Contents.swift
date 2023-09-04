final class Solution {
    func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
        var result = [String]()
        var counter = 0
        for i in s {
            if counter >= k { counter = 0 }
            if counter == 0 {
                result.append(String(i))
            } else {
                result[result.count - 1].append(i)
            }
            counter += 1
        }
        if counter < k {
            result[result.count - 1].append(String(repeating: fill, count: k - counter))
        }
        return result
    }
}

Solution().divideString("abcdefghi", 3, "x")
Solution().divideString("abcdefghij", 3, "x")
