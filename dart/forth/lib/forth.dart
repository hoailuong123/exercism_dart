
class Forth {
  List<int> stack = [];

  void evaluate(String input) {
    List<String> commands = input.split(' ');
    for (var command in commands) {
      if (int.tryParse(command) != null) {
        // If the command is a number, push it onto the stack.
        stack.add(int.parse(command));
      } else {
        // If the command is not a number, evaluate it as an operation.
        executeOperation(command);
      }
    }
  }

  void executeOperation(String operation) {
    switch (operation) {
      case '+':
        if (stack.length >= 2) {
          int b = stack.removeLast();
          int a = stack.removeLast();
          stack.add(a + b);
        } else {
          throw Exception("Not enough operands for '+' operation.");
        }
        break;
      case '-':
        if (stack.length >= 2) {
          int b = stack.removeLast();
          int a = stack.removeLast();
          stack.add(a - b);
        } else {
          throw Exception("Not enough operands for '-' operation.");
        }
        break;
      case '*':
        if (stack.length >= 2) {
          int b = stack.removeLast();
          int a = stack.removeLast();
          stack.add(a * b);
        } else {
          throw Exception("Not enough operands for '*' operation.");
        }
        break;
      case '/':
        if (stack.length >= 2) {
          int b = stack.removeLast();
          int a = stack.removeLast();
          stack.add(a ~/ b);
        } else {
          throw Exception("Not enough operands for '/' operation.");
        }
        break;
      case 'dup':
        if (stack.isNotEmpty) {
          int a = stack.last;
          stack.add(a);
        } else {
          throw Exception("Not enough operands for 'dup' operation.");
        }
        break;
      case 'drop':
        if (stack.isNotEmpty) {
          stack.removeLast();
        } else {
          throw Exception("Not enough operands for 'drop' operation.");
        }
        break;
      case 'swap':
        if (stack.length >= 2) {
          int b = stack.removeLast();
          int a = stack.removeLast();
          stack.add(b);
          stack.add(a);
        } else {
          throw Exception("Not enough operands for 'swap' operation.");
        }
        break;
      case 'over':
        if (stack.length >= 2) {
          int b = stack[stack.length - 2];
          stack.add(b);
        } else {
          throw Exception("Not enough operands for 'over' operation.");
        }
        break;
      default:
        throw Exception("Unknown operation: $operation");
    }
  }

  void printStack() {
    print(stack);
  }
}

void main() {
  var forth = Forth();
  forth.evaluate('-1 -2 -3 -4 -5');
  forth.printStack(); // Output: [-1, -2, -3, -4, -5]
}
