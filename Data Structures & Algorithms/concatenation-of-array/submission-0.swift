class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var result = nums
        for num in nums {
            result.append(num)
        }
        return result
    }
}
