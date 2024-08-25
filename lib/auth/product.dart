// lib/auth/product.dart
class Product {
  final String name;
  final String description;
  final int amount;
  final String imagePath;
  int quantity;
  bool isAddedToCart;

  Product({
    required this.name,
    required this.description,
    required this.amount,
    required this.imagePath,
    this.quantity = 1,
    this.isAddedToCart = false,
  });
}
