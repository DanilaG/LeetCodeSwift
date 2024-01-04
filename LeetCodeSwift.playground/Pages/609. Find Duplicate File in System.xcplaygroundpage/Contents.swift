final class Solution {
    func findDuplicate(_ paths: [String]) -> [[String]] {
        var content = [Substring: [String]]()
        for dir in paths {
            let splited = dir.split(separator: " ")
            let dirName = splited[0]
            for file in splited[1...] {
                let splitIndex = file.lastIndex(where: { $0 == "(" })!
                let fileName = dirName + "/" + file[..<splitIndex]
                let data = file[splitIndex...]
                content[data, default: []].append(String(fileName))
            }
        }
        
        return content.values.filter({ $0.count > 1 })
    }
}

Solution().findDuplicate(["root/a 1.txt(abcd) 2.txt(efgh)","root/c 3.txt(abcd)","root/c/d 4.txt(efgh)","root 4.txt(efgh)"])
Solution().findDuplicate(["root/a 1.txt(abcd) 2.txt(efgh)","root/c 3.txt(abcd)","root/c/d 4.txt(efgh)"])
