final class SnapshotArray {

    var changes: [[(Int, Int)]]
    var snapId = 0

    init(_ length: Int) {
        changes = Array(repeating: [], count: length)
    }
    
    func set(_ index: Int, _ val: Int) {
        if let last = changes[index].last, last.0 == snapId {
            changes[index][changes[index].count - 1].1 = val
            return
        }
        changes[index].append((snapId, val))
    }
    
    func snap() -> Int {
        snapId += 1
        return snapId - 1
    }
    
    func get(_ i: Int, _ snap_id: Int) -> Int {
        guard !changes[i].isEmpty else { return 0 }
        var left = 0
        var right = changes[i].count - 1
        while left < right {
            let mid = (right - left) / 2 + left
            (snap_id > changes[i][mid].0) ? (left = mid + 1) : (right = mid)
        }
        
        if changes[i][left].0 <= snap_id {
            return changes[i][left].1
        }
        
        if left > 0, changes[i][left - 1].0 <= snap_id {
            return changes[i][left - 1].1
        }
        
        return 0
    }
}

//let obj = SnapshotArray(3)
//obj.set(1, 3)
//obj.set(1, 8)
//obj.snap()
////obj.get(1, 0)
//obj.set(2, 5)
////obj.get(2, 0)
//obj.snap()
//obj.snap()
//obj.set(0, 6)
//obj.set(0, 12)
////obj.get(0, 1)
//obj.snap()
//obj.set(2, 18)
//obj.set(2, 20)
//obj.set(0, 1)
////obj.get(2, 1)
//obj.snap()
//obj.get(2, 2)


let obj = SnapshotArray(1)
obj.set(0, 4)
obj.set(0, 16)
obj.set(0, 13)
obj.snap()
obj.get(0, 0)
