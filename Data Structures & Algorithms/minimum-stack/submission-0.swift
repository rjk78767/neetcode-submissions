class MinStack {

    private var stack: [(value: Int, min: Int)]

    init() {
        stack = [] 
    }

    func push(_ val: Int) {
        if stack.count == 0 {
            stack.append((value: val, min: val))
        } else {
            let min = min(val, stack.last!.min)
            stack.append((value: val, min: min))
        }
    }

    func pop() {
        stack.removeLast()
    }

    func top() -> Int {
        return stack.last!.value
    }

    func getMin() -> Int {
        return stack.last!.min
    }
}
