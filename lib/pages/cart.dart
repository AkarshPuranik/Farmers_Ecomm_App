import 'package:flutter/material.dart';
import 'package:gee_com/auth/product.dart';
import 'package:gee_com/pages/checkout.dart';

class CartPage extends StatefulWidget {
  final List<Product> cartItems;

  CartPage({required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void _removeItem(int index) {
    setState(() {
      widget.cartItems.removeAt(index);
    });
  }

  void _incrementQuantity(Product product) {
    setState(() {
      product.quantity++;
    });
  }

  void _decrementQuantity(Product product) {
    setState(() {
      if (product.quantity > 1) {
        product.quantity--;
      } else {
        widget.cartItems.remove(product);
      }
    });
  }

  double getTotalCost() {
    double totalCost = 0.0;
    for (var product in widget.cartItems) {
      totalCost += product.amount * product.quantity;
    }
    return totalCost;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: widget.cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final product = widget.cartItems[index];
                return ListTile(
                  leading: Image.asset(product.imagePath),
                  title: Text(product.name),
                  subtitle: Text('₹${product.amount} x ${product.quantity}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => _decrementQuantity(product),
                      ),
                      Text('${product.quantity}'),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () => _incrementQuantity(product),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _removeItem(index),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Total: ₹${getTotalCost()}'),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (widget.cartItems.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutScreen(
                            cartItems: widget.cartItems,
                            userAddress: '', // Pass the user's address if available
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Your cart is empty')),
                      );
                    }
                  },
                  child: Text('Proceed to Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
