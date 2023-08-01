class Product {
  int id;
  String name;
  double price;
  String? note;

  Product({
      required this.id, 
      required this.name, 
      required this.price, 
      this.note
      });
}
