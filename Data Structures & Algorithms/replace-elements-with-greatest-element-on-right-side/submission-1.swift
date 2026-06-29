class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var result = [Int](repeating: 0, count: arr.count)
        result[arr.count-1] = -1
        for i in stride(from: arr.count-2, through: 0, by: -1) {
            result[i] = max(result[i+1], arr[i+1])
        }
        return result
    }
}
