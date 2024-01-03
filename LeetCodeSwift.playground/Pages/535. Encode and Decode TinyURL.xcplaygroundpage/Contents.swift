final class Codec {
    private var id = 0
    private var map = [String:String]()
    
    // Encodes a URL to a shortened URL.
    func encode(_ longUrl: String) -> String {
        let result = "http://tinyurl.com/" + String(id)
        map[result] = longUrl
        id += 1
        return result
    }
    
    // Decodes a shortened URL to its original URL.
    func decode(_ shortUrl: String) -> String {
        map[shortUrl]!
    }
}

let obj = Codec()
var s = obj.encode("https://leetcode.com/problems/design-tinyurl")
let ans = obj.decode(s)
