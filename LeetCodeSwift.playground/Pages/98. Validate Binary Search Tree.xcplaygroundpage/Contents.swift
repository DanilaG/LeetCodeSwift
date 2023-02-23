public class TreeNode {
public var val: Int
public var left: TreeNode?
public var right: TreeNode?
public init() { self.val = 0; self.left = nil; self.right = nil; }
public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 self.val = val
 self.left = left
 self.right = right
}
}

final class Solution {
    func isValidBST(_ root: TreeNode?, min: Int? = nil, max: Int? = nil) -> Bool {
        guard let root = root else { return true }
        
        guard min.map { root.val > $0 } ?? true else { return false }
        guard max.map { root.val < $0 } ?? true else { return false }
        
        return isValidBST(root.left, min: min, max: root.val) &&
        isValidBST(root.right, min: root.val, max: max)
    }
}
