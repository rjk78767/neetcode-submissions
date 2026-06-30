class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        for char in s {
            if char == "(" || char == "[" || char == "{" {
               stack.append(char)
            } else if let last = stack.last, (last == "(" && char == ")") || (last == "[" && char == "]") || (last == "{" && char == "}") {
                stack.removeLast()
            } else {
                return false
            }
        }
        return stack.isEmpty
    }
}
