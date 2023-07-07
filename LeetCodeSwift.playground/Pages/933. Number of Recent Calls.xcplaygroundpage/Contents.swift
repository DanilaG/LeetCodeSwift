final class RecentCounter {
    private var counter: [Int]
    
    init() {
        counter = []
    }
    
    func ping(_ t: Int) -> Int {
        counter.append(t)
        counter = counter.filter { t - 3000 <= $0 }
        return counter.count
    }
}

var a = RecentCounter()
a.ping(1)
a.ping(100)
a.ping(3001)
a.ping(3002)
