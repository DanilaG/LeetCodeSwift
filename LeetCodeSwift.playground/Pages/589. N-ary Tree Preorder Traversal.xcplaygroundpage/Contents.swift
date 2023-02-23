
public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}
 

final class Solution {
    
    private var result = Array<Int>()
    
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else { return }
        pars(root)
        return result
    }
    
    private func pars(_ root: Node) {
        result.append(root.val)
        for child in root.children {
            pars(child)
        }
    }
}
