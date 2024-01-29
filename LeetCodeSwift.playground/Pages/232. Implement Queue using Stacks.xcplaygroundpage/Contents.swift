final class MyQueue {

    private var a = [Int]()
    private var b = [Int]()
    
    init() {
        
    }
    
    func push(_ x: Int) {
        a.append(x)
    }
    
    func pop() -> Int {
        rebalance()
        return b.popLast()!
    }
    
    func peek() -> Int {
        rebalance()
        return b.last!
    }
    
    func empty() -> Bool {
        a.isEmpty && b.isEmpty
    }
    
    private func rebalance() {
        guard b.isEmpty else { return }
        while let top = a.popLast() {
            b.append(top)
        }
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
