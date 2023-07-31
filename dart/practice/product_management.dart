import 'dart:async';
import 'dart:io';
import 'product.dart';

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
