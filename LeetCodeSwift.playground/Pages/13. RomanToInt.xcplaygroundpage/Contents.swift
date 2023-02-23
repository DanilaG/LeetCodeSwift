func romanToInt(_ s: String) -> Int {
    parsM(iterator: IteratorWithMemory(s))
}

class IteratorWithMemory {
    
    private(set) var value: Character?
    private var iterator: String.Iterator
    
    init(_ s: String) {
        iterator = s.makeIterator()
        value = iterator.next()
    }
    
    func next() {
        value = iterator.next()
    }
}

func parsM(iterator: IteratorWithMemory) -> Int {
    skipAndCount("M", iterator: iterator) * 1000 + parsD(iterator: iterator)
}

func parsD(iterator: IteratorWithMemory) -> Int {
    skipAndCount("D", iterator: iterator) * 500 + parsC(iterator: iterator)
}

func parsC(iterator: IteratorWithMemory) -> Int {
    let sum = skipAndCount("C", iterator: iterator) * 100
    
    switch iterator.value {
        case "M":
            return -sum + parsM(iterator: iterator)
        case "D":
            print("return to D")
            return -sum + parsD(iterator: iterator)
        default:
            return sum + parsL(iterator: iterator)
    }
}

func parsL(iterator: IteratorWithMemory) -> Int {
    skipAndCount("L", iterator: iterator) * 50 + parsX(iterator: iterator)
}

func parsX(iterator: IteratorWithMemory) -> Int {
    let sum = skipAndCount("X", iterator: iterator) * 10
    
    switch iterator.value {
        case "L":
            return -sum + parsL(iterator: iterator)
        case "C":
            return -sum + parsC(iterator: iterator)
        default:
            return sum + parsV(iterator: iterator)
    }
}

func parsV(iterator: IteratorWithMemory) -> Int {
    skipAndCount("V", iterator: iterator) * 5 + parsI(iterator: iterator)
}

func parsI(iterator: IteratorWithMemory) -> Int {
    let sum = skipAndCount("I", iterator: iterator) * 1
    
    switch iterator.value {
        case "X":
            return -sum + parsX(iterator: iterator)
        case "V":
            return -sum + parsV(iterator: iterator)
        default:
            return sum
    }
}

func skipAndCount(_ char: Character?, iterator: IteratorWithMemory) -> Int {
    guard let char = char else { return 0 }
    
    print(char)
    var counter = 0
    while iterator.value == char {
        counter += 1
        iterator.next()
    }
    
    return counter
}

print(romanToInt("MCMXCIV"))
