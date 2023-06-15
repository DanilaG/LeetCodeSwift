
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
  func maxLevelSum(_ root: TreeNode?) -> Int {
      guard let root = root else { return 0 }
      var level = 1
      var maxSum = root.val
      var currentSum = 0
      var currentLevel = 2
      var current = [root.left, root.right]
      var next = [TreeNode?]()

      while !current.isEmpty {
          for node in current {
              guard let node = node else { continue }
              currentSum += node.val
              if let left = node.left { next.append(left) }
              if let right = node.right { next.append(right) }
          }
          if maxSum < currentSum {
              maxSum = currentSum
              level = currentLevel
          }
          currentSum = 0
          current = next
          next = []
          currentLevel += 1
      }

      return level
  }
}

//let tree = TreeNode(1, TreeNode(7, TreeNode(7), TreeNode(-8)), TreeNode(0))
//let tree = TreeNode(-100, TreeNode(-200, TreeNode(-20), TreeNode(-5)), TreeNode(-300, TreeNode(-5), nil))
let tree = TreeNode(1, TreeNode(7, TreeNode(7), TreeNode(-8)), TreeNode(0))

Solution().maxLevelSum(tree)
