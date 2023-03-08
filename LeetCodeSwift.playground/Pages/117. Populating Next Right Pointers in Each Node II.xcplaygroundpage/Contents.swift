public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
    public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}

final class Solution {
    func connect(_ root: Node?) -> Node? {
        set(for: root, next: nil)
        return root
    }
    
    func set(for root: Node?, next: Node?) {
        guard let root = root else { return }
        root.next = next
        
        if let right = root.right {
            set(for: right, next: nearest(from: root.next))
            set(for: root.left, next: right)
        } else if let left = root.left {
            set(for: left, next: nearest(from: root.next))
        }
    }
    
    func nearest(from next: Node?)-> Node? {
        guard let next = next else { return nil }
        
        if let left = next.left {
            return left
        }
        
        if let right = next.right {
            return right
        }
        
        return nearest(from: next.next)
    }
}

func print(node: Node?) {
    guard let node = node else { return }
    print(node.val, node.next?.val)
    print(node: node.left)
    print(node: node.right)
}

let root = Node(1)

//root.left = Node(2)
//root.left?.left = Node(4)
//root.left?.right = Node(5)
//root.right = Node(3)
//root.right?.right = Node(7)

root.left = Node(2)
root.left?.left = Node(3)
root.left?.left?.left = Node(4)
root.left?.right = Node(5)
root.right = Node(6)
root.right?.right = Node(7)
root.right?.right?.left = Node(8)

let result = Solution().connect(root)
print(node: result)
