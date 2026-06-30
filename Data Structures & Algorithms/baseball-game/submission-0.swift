class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var result: [Int] = []
        for operation in operations {
            if let num = Int(operation) {
                result.append(num)
            } else if operation == "D", let last = result.last {
                result.append(last*2)
            } else if operation == "+", let last = result.last {
                result.append(last+result[result.count-2])
            } else if operation == "C" {
                result.removeLast()
            }
        }
        return result.reduce(0, +)
    }
}
