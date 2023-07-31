import 'dart:async';
import 'dart:io';
import 'product.dart';
import 'product_management.dart';

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
