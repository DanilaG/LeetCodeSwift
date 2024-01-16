
final class RandomizedSet {

    private var map = [Int:Int]()
    private var arr = [Int]()
    
    func insert(_ val: Int) -> Bool {
        if let isContain = map[val] {
            return false
        }
        
        map[val] = arr.count
        arr.append(val)
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        guard let index = map[val] else { return false }
        arr[index] = arr.last!
        arr.removeLast()
        map.removeValue(forKey: val)
        if index < arr.count {
            map[arr[index]] = index
        }
        return true
    }
    
    func getRandom() -> Int {
        arr.randomElement()!
    }
}


final class RandomizedSetV2 {

    private var set = Set<Int>()
    
    func insert(_ val: Int) -> Bool {
        if set.contains(val) {
            return false
        }
        
        set.insert(val)
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        guard set.contains(val) else { return false }
        set.remove(val)
        return true
    }
    
    func getRandom() -> Int {
        set.randomElement()!
    }
}

let set = RandomizedSet()
//set.insert(0)
//set.insert(1)
//set.remove(0)
//set.insert(2)
//set.remove(1)
//set.getRandom()
set.remove(0)
set.remove(0)
set.insert(0)
set.getRandom()
set.remove(0)
set.insert(0)


/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
