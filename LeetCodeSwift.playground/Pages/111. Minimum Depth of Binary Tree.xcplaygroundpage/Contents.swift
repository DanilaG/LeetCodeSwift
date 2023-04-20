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
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var counter = 0
        var nodes: [TreeNode] = [root]
        var next: [TreeNode] = []
        while !nodes.isEmpty {
            counter += 1
            for node in nodes {
                if node.left == nil && node.right == nil { return counter }
                if let left = node.left { next.append(left) }
                if let right = node.right { next.append(right) }
            }
            nodes = next
            next = []
        }
        return counter
    }
}

// let n = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))
let n = TreeNode(2, nil, TreeNode(3, nil, TreeNode(4, nil, TreeNode(5, nil, TreeNode(6)))))
Solution().minDepth(n)
