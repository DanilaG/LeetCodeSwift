
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
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        min(minVal(root!.left, root!.val).2, minVal(root!.right, root!.val).2)
    }

    private func minVal(_ node: TreeNode?, _ last: Int) -> (Int, Int, Int) {
        guard let node = node else { return (1000000, -1000000, 1000000) }
        let left = minVal(node.left, node.val)
        let right = minVal(node.right, node.val)
        let minVal = min(left.0, right.0, node.val)
        let maxVal = max(left.1, right.1, node.val)
        return (
            minVal,
            maxVal,
            min(
                abs(last - minVal),
                abs(maxVal - last),
                left.2, right.2
            )
        )
    }
}

//let tree = TreeNode(1, TreeNode(-1), TreeNode(48, TreeNode(12), TreeNode(59)))
let tree = TreeNode(236, TreeNode(104, nil, TreeNode(227)), TreeNode(701,nil, TreeNode(911)))
Solution().getMinimumDifference(tree)
