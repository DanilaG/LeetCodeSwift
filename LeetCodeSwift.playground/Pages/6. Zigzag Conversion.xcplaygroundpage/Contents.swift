final class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 else { return s }
        let s = Array(s)
        let n = s.count
        var result = [Character]()
        result.reserveCapacity(n)
        let step = 2 * numRows - 2

        for row in 0..<numRows {
            var index = row
            while index < n {
                result.append(s[index])
                if row != 0 && row != (numRows - 1) {
                    let secondIndex = index + step - row * 2
                    if secondIndex < n {
                        result.append(s[secondIndex])
                    }
                }
                index += step
            }
        }
        
        return String(result)
    }
}

// Solution().convert("PAYPALISHIRING", 3)
// Solution().convert("PAYPALISHIRING", 4)
Solution().convert("PAYPALISHIRING", 1)
