
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
   func allPossibleFBT(_ n: Int) -> [TreeNode?] {
       guard (n % 2) != 0 else { return [] }
       var all = [(TreeNode(0), 1)]
       var newFrom = 0
       var oldEndAt = all.count
       
       while all[newFrom].1 < n {
           if newFrom > 0 {
               for i in 0..<newFrom {
                   for j in newFrom..<oldEndAt {
                       let k = all[i].1 + all[j].1
                       guard k <= n else { continue }
                       all.append((TreeNode(0, all[i].0, all[j].0), k + 1))
                   }
               }
           }
           
           for i in 0..<oldEndAt {
               for j in newFrom..<oldEndAt {
                   let k = all[i].1 + all[j].1
                   guard k <= n else { continue }
                   all.append((TreeNode(0, all[j].0, all[i].0), k + 1))
               }
           }
           
           newFrom = oldEndAt
           oldEndAt = all.count
       }
       
       return all.filter({ $0.1 == n }).map { $0.0 }
   }
}

let result = Solution().allPossibleFBT(2)

print(result.count)
for i in result {
    print("====")
    printTree(i)
}

func printTree(_ node: TreeNode?) {
    print(node?.val)
    guard let node = node else { return }
    printTree(node.left)
    printTree(node.right)
}
