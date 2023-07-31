import 'dart:async';
import 'dart:io';

class Product {
  int id;
  String name;
  double price;

  Product(this.id, this.name, this.price);
}

class ProductManager {
  List<Product> products = [];
  int _nextId = 1;

  Future<void> fetchProducts() async {
   
      await Future.delayed(Duration(seconds: 2));
       for (int i = 1; i <= 10; i++) {
      products.add(Product(_nextId++, 'Product $i', i * 10.0));
      print('Product $i');
    }
    print('Fetched 10 products.');
  }

  Future<void> createProduct(String name, double price) async {
    products.add(Product(_nextId++, name, price));
    print('Product "$name" added successfully.');
  }

  void showListOfProducts() {
    print('List of products:');
    for (var product in products) {
      print(
          'ID: ${product.id}, Name: ${product.name}, Price: ${product.price}');
    }
  }

  void editProduct(int id, String newName, double newPrice) {
    var product = products.where((p) => p.id == id);
    if (product.isNotEmpty) {
      product.first.name = newName;
      product.first.price = newPrice;
      print('Product with ID $id edited successfully.');
    } else {
      print('Product with ID $id not found.');
    }
  }

  void deleteProduct(int id) {
    products.removeWhere((p) => p.id == id);
    print('Product with ID $id deleted successfully.');
  }

  void searchProductByName(String name) {
    var foundProducts = products
        .where((p) => p.name.toLowerCase().contains(name.toLowerCase()))
        .toList();
    if (foundProducts.isNotEmpty) {
      print('Found products with name "$name":');
      for (var product in foundProducts) {
        print(
            'ID: ${product.id}, Name: ${product.name}, Price: ${product.price}');
      }
    } else {
      print('No products found with name "$name".');
    }
  }

  int countTotalProducts() {
    return products.length;
  }
}

void main() async {
  var productManager = ProductManager();
  var isRunning = true;

  while (isRunning) {
    print('\nEnter the number of the operation:');
    print('1. Fetch products');
    print('2. View all list products');
    print('3. Create product');
    print('4. Edit product by ID');
    print('5. Delete product by ID');
    print('6. Search product by name');
    print('7. Count total products');
    print('8. Exit');

    var input = int.parse(stdin.readLineSync() ?? '0');

    switch (input) {
      case 1:
        await productManager.fetchProducts();
        break;
      case 2:
        productManager.showListOfProducts();
        break;
      case 3:
        print('Enter product name:');
        var name = stdin.readLineSync() ?? '';
        print('Enter product price:');
        var price = double.parse(stdin.readLineSync() ?? '0');
        await productManager.createProduct(name, price);
        break;
      case 4:
        print('Enter product ID to edit:');
        var id = int.parse(stdin.readLineSync() ?? '0');
        print('Enter new product name:');
        var newName = stdin.readLineSync() ?? '';
        print('Enter new product price:');
        var newPrice = double.parse(stdin.readLineSync() ?? '0');
        productManager.editProduct(id, newName, newPrice);
        break;
      case 5:
        print('Enter product ID to delete:');
        var id = int.parse(stdin.readLineSync() ?? '0');
        productManager.deleteProduct(id);
        break;
      case 6:
        print('Enter product name to search:');
        var name = stdin.readLineSync() ?? '';
        productManager.searchProductByName(name);
        break;
      case 7:
        var totalProducts = productManager.countTotalProducts();
        print('Total products: $totalProducts');
        break;
      case 8:
        isRunning = false;
        print('Exiting the program.');
        break;
      default:
        print('Invalid input. Try again.');
        break;
    }

    print('---------------------------');
  }
}
