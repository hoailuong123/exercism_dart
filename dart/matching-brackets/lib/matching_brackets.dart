class MatchingBrackets {
  bool isPaired(String input) {
    // Create a stack to keep track of opening brackets
    List<String> stack = [];

    // Map to store the matching pairs of brackets
    Map<String, String> pairs = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    // Iterate through each character in the input string
    for (int i = 0; i < input.length; i++) {
      String char = input[i];

      // If the character is an opening bracket, push it onto the stack
      if (char == '(' || char == '{' || char == '[') {
        stack.add(char);
      }
      // If the character is a closing bracket
      else if (char == ')' || char == '}' || char == ']') {
        // If the stack is empty or the top of the stack doesn't match the current closing bracket, return false
        if (stack.isEmpty || stack.last != pairs[char]) {
          return false;
        }
        // If the top of the stack matches the current closing bracket, pop the opening bracket from the stack
        stack.removeLast();
      }
    }

    // If the stack is empty at the end, all brackets are properly paired
    return stack.isEmpty;
  }
}

void main() {
  final matchingBrackets = MatchingBrackets();
      final result = matchingBrackets.isPaired('{)()');
  print(result); // Output: true
}
