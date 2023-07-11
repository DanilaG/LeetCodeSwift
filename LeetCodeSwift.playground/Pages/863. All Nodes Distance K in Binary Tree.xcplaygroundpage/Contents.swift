
public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
      self.val = val
      self.left = nil
      self.right = nil
  }
    public init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}

final class Solution {
    func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ k: Int) -> [Int] {
        guard let target = target else { return [] }
        return distance(root, target, k).1
    }
    
    private func distance(_ root: TreeNode?, _ target: TreeNode, _ k: Int) -> (Int, [Int]) {
        guard let root = root else { return (-10, []) }
        guard root.val != target.val else {
            if k == 0 {
                return (0, [root.val])
            }
            return (1, elements(root.left, k - 1) + elements(root.right, k - 1))
        }

        let leftResult = distance(root.left, target, k)
        guard leftResult.0 != 0 else { return leftResult }
        if leftResult.0 > 0 {
            let next = leftResult.0 + 1
            guard leftResult.0 != k else { return (next, leftResult.1 + [root.val]) }
            return (next, leftResult.1 + elements(root.right, k - next))
        }

        let rightResult = distance(root.right, target, k)
        guard rightResult.0 != 0 else { return rightResult }
        let next = rightResult.0 + 1
        guard rightResult.0 != k else { return (next, rightResult.1 + [root.val]) }
        return (next, rightResult.1 + elements(root.left, k - next))

    }
    
    private func elements(_ root: TreeNode?, _ k: Int) -> [Int] {
        guard let root = root else { return [] }
        guard k != 0 else { return [root.val] }
        guard k > 0 else { return [] }
        return elements(root.left, k - 1) + elements(root.right, k - 1)
    }
}

//let tree = TreeNode(3,
//                    TreeNode(5, TreeNode(6), TreeNode(2, TreeNode(7), TreeNode(4))),
//                    TreeNode(1, TreeNode(0), TreeNode(8))
//)
//Solution().distanceK(tree, TreeNode(5), 2)
//let tree = TreeNode(1)
//)
//Solution().distanceK(tree, TreeNode(1), 3)
let tree = TreeNode(0, TreeNode(1, TreeNode(3), TreeNode(2))
)
Solution().distanceK(tree, TreeNode(2), 1)
//let tree = TreeNode(0, TreeNode(1, TreeNode(2, TreeNode(3, TreeNode(4))))
//)
//Solution().distanceK(tree, TreeNode(3), 0)
