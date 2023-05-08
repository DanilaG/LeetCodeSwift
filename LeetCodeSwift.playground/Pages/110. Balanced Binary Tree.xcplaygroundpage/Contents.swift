
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

//func isBalanced(_ root: TreeNode?) -> Bool {
//    guard let root = root else { return true }
//    var set: Array<TreeNode> = [root]
//    var next: Array<TreeNode?> = []
//
//    var wasNil = false
//    var gapCounter = 0
//    while !set.isEmpty {
//        guard gapCounter < 2 else { return false }
//        for node in set {
//            next.append(node.left)
//            next.append(node.right)
//            wasNil = wasNil || (node.left == nil && node.right == nil)
//        }
//        set = next.compactMap { $0 }
//        print(gapCounter, set.count, next.count)
//        next = []
//        if wasNil { gapCounter += 1 }
//    }
//
//    return true
//}
 
final class Solution {
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        do {
            _ = try depthWithCheck(root)
        } catch {
            return false
        }
        return true
    }
    
    private func depthWithCheck(_ root: TreeNode?) throws -> Int {
        guard let root = root else { return 0 }
        let left = try depthWithCheck(root.left)
        let right = try depthWithCheck(root.right)
        guard abs(left - right) < 2 else { throw CancellationError() }
        return max(left, right) + 1
    }
}

let tree = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))
//let tree = TreeNode(1, TreeNode(2, TreeNode(3, TreeNode(4), TreeNode(4)), TreeNode(3)), TreeNode(2))
// let tree = TreeNode(1, TreeNode(1, TreeNode(1)))

Solution().isBalanced(tree)
