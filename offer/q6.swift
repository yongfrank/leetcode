public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func reversePrint(_ head: ListNode?) -> [Int] {
    guard let head: ListNode = head else {
        return Array<Int>()
    }
    var count: Int = 0;
    var ptr: ListNode? = head
    while ptr != nil {
        count += 1
        ptr = ptr?.next
    }
    var resultion: Array<Int> = Array<Int>(repeating: 0, count: count)
    var resolutionPtr: Int = count - 1
    ptr = head
    while ptr != nil {
        if let value: Int = ptr?.val {
            resultion[resolutionPtr] = value
            resolutionPtr -= 1
            ptr = ptr?.next
        }
    }
    
    return resultion
}

var head: ListNode = ListNode(3)
head.next = ListNode(4)

print(reversePrint(head))


struct Stack<T> {
    private var datas: [T] = [T]()

    mutating func push(_ data: T) {
        datas.append(data)
    }

    mutating func pop(_ data: T) -> T {
        return datas.popLast()
    }
}