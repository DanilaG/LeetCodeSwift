final class Solution {
    func capitalizeTitle(_ title: String) -> String {
        title.lowercased()
            .split(separator: " ")
            .map({ $0.count > 2 ? String($0).capitalizingFirstLetter() : String($0) })
            .joined(separator: " ")
    }
}
                                                     
extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}


Solution().capitalizeTitle("capiTalIze tHe titLe")
Solution().capitalizeTitle("First leTTeR of EACH Word")
