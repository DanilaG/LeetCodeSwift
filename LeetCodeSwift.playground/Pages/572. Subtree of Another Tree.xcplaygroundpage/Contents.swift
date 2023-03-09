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
 
class Solution {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root = root else {
            return subRoot == nil
        }
        
        if isSame(root, subRoot) {
            return true
        }
        
        return isSubtree(root.left, subRoot) || isSubtree(root.right, subRoot)
    }
    
    func isSame(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
        guard let a = a, let b = b else {
            return a == nil && b == nil
        }
        
        guard a.val == b.val else {
            return false
        }
        
        return isSame(a.left, b.left) && isSame(a.right, b.right)
    }
}

let tree = TreeNode(3)

tree.left = TreeNode(4)
tree.right = TreeNode(5)

tree.left?.left = TreeNode(1)
tree.left?.right = TreeNode(2)

// tree.left?.left?.right = TreeNode(0)

let subTree = TreeNode(4)
subTree.left = TreeNode(1)
subTree.right = TreeNode(2)
subTree.right?.left = TreeNode(2)

Solution().isSubtree(tree, subTree)
