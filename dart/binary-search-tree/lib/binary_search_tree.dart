// Class represents a node in a binary tree data structure.
class Node {
  // This is a string variable that holds the data value of the node.
  String data;
  // This is a reference to the left child node of the current node
  Node? left;
  // This is a reference to the right child node of the current node
  Node? right;
  // Inside the constructor, the "data" parameter is assigned to the "data" property of the class.
  Node(this.data);
}

// Class implementing a binary search tree data structure.
class BinarySearchTree {
  // takes a `value` parameter and initializes the `root` with a new `Node` object with that value
  late Node root;
  BinarySearchTree(String value) {
    this.root = Node(value);
  }
  // 'insert' method it takes an 'item' parameter and creates a new 'Node' object with that item.
  // It then starts traversing the tree from the root node.
  void insert(String item) {
    final node = Node(item);
    var currentNode = root;
    while (true) {
      if (item.compareTo(currentNode.data) < 0) {
        if (currentNode.left == null) {
          currentNode.left = node;
          return;
        }
        currentNode = currentNode.left!;
      } else {
        if (currentNode.right == null) {
          currentNode.right = node;
          return;
        }
        currentNode = currentNode.right!;
      }
    }
  }

  List<String> get sortedData {
    final values = <String>[];
    _traverse(root, values);
    return values;
  }

  void _traverse(Node? node, List<String> values) {
    if (node != null) {
      _traverse(node.left, values);
      values.add(node.data.toString());
      _traverse(node.right, values);
    }
  }
}

void main() {
  final bst = BinarySearchTree('4')..insert('2');
  print(bst.sortedData); // Output: [2, 4]
}
