class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var currentStreak = 0
        var maxStreak = 0
        for num in nums {
            if num == 1 {
                currentStreak += 1
                maxStreak = max(maxStreak, currentStreak)
            } else {
                currentStreak = 0
            }            
        }
        return maxStreak
    }
}
