final class Solution {
    func decodeString(_ s: String) -> String {
        let arr = Array(s)
        return decodeString(arr, from: 0, to: arr.count)
    }
    
    private func decodeString(_ s: [Character], from start: Int, to end: Int) -> String {
        var result = ""
        var i = start
        while i < end {
            guard s[i].isNumber else {
                result.append(s[i])
                i += 1
                continue
            }
            
            var number = Int(String(s[i]))!
            i += 1
            while s[i] != "[" {
                number *= 10
                number += Int(String(s[i]))!
                i += 1
            }
            i += 1
            let newStart = i
            
            guard s[newStart] != "]" else {
                i += 1
                continue
            }
            
            var brCounter = 0
            while brCounter >= 0 {
                if s[i] == "[" { brCounter += 1 }
                if s[i] == "]" { brCounter -= 1 }
                i += 1
            }
            
            let parsed = decodeString(s, from: newStart, to: i - 1)
            for _ in 0..<number {
                result += parsed
            }
        }
        
        return result
    }
}

//Solution().decodeString("F10[a]F2[bc]F")
// Solution().decodeString("3[a2[c]]")
Solution().decodeString("2[abc]3[cd]ef")
