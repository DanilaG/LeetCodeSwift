class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        print(Array(s))
        print(t.reversed())
        return Array(s) == t.reversed()
    }
}


Solution().isAnagram("anagram", "nagaram")
