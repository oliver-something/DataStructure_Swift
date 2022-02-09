struct Stack<Element> {
        
    private var arrayList = [Element]()
    var count: Int {
        arrayList.count
    }
    
    var isEmpty: Bool {
        arrayList.isEmpty
    }
    
    init() {}
    
    init(_ elements: [Element]) {
        self.arrayList = elements
    }
    
    mutating func push(element: Element) {
        arrayList.append(element)
    }
    
    mutating func peek() -> Element? {
        arrayList.last
    }
    
    mutating func pop() -> Element? {
        arrayList.removeLast()
    }
    
    mutating func iterator() {
        arrayList.forEach { item in
            print(item)
        }
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        self.arrayList = elements
    }
}

extension Stack: CustomDebugStringConvertible {
    var debugDescription: String {
        var result = "["
        var first = true
        for item in self.arrayList {
            if first {
                first = false
            } else {
                result += ", "
            }
            debugPrint(item, terminator: "", to: &result)
        }
        result += "]"
        return result
    }
}

extension Stack: Equatable where Element: Equatable {}
