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
    func findTilt(_ root: TreeNode?) -> Int {
        let (tilt, _) = findTiltAndSum(root)
        return tilt
    }
    
    func findTiltAndSum(_ root: TreeNode?) -> (Int, Int) {
        guard let root = root else { return (0, 0) }
        let (lTilt, lSum) = findTiltAndSum(root.left)
        let (rTilt, rSum) = findTiltAndSum(root.right)
        return (Int(abs(Double(lSum - rSum))) + lTilt + rTilt, lSum + rSum + root.val)
    }
}

let root = TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(5)), TreeNode(9, nil, TreeNode(7)))
Solution().findTiltAndSum(root)
