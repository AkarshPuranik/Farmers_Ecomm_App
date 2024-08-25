import 'package:flutter/material.dart';
import 'package:gee_com/auth/product.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class FarmEquipmentPage extends StatefulWidget {
  @override
  _FarmEquipmentPageState createState() => _FarmEquipmentPageState();
}

class _FarmEquipmentPageState extends State<FarmEquipmentPage> {
  final List<Product> products = [
    Product(
      name: 'Organic Manure',
      description: 'High-quality organic manure to improve soil fertility and boost plant growth.',
      amount: 1500, // ₹1500
      imagePath: 'assets/images/manure.jpg',
    ),
    Product(
      name: 'Nitrogen Fertilizer',
      description: 'Effective nitrogen fertilizer to increase crop yields.',
      amount: 2000, // ₹2000
      imagePath: 'assets/images/fertilizer.jpg',
    ),
    Product(
      name: 'Pesticide',
      description: 'Protect your crops with our highly effective pesticides.',
      amount: 1200, // ₹1200
      imagePath: 'assets/images/pesticide.jpg',
    ),
  ];

  List<Product> cartItems = [];

  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Handle successful payment here
    print("Payment Success: $response");
    // Clear the cart after successful payment
    setState(() {
      cartItems.clear();
      products.forEach((product) {
        product.isAddedToCart = false;
        product.quantity = 1;
      });
    });
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Handle payment error here
    print("Payment Error: $response");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Handle external wallet selection here
    print("External Wallet: $response");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farm Equipment', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cartItems: cartItems, razorpay: _razorpay),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _showDescriptionDialog(context, products[index]),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                        child: Hero(
                          tag: products[index].name,
                          child: Image.asset(
                            products[index].imagePath,
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              products[index].name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              products[index].description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '₹${products[index].amount}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.green),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () => _updateQuantity(index, decrease: true),
                                ),
                                Text(products[index].quantity.toString()),
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () => _updateQuantity(index, decrease: false),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            ElevatedButton(
                              onPressed: () => _addToCart(products[index]),
                              child: Text(products[index].isAddedToCart
                                  ? 'Remove from Cart'
                                  : 'Add to Cart'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _showDescriptionDialog(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(product.name),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.description),
            SizedBox(height: 8),
            Text(
              'Price: ₹${product.amount}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'Quantity: ${product.quantity}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 16),
                Text(
                  'Total: ₹${product.amount * product.quantity}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _openCheckout(context, product);
            },
            child: Text('Buy'),
          ),
        ],
      ),
    );
  }

  void _openCheckout(BuildContext context, Product product) async {
    var options = {
      'key': 'rzp_test_hoTNZlS83wp135', // Use your Razorpay key
      'amount': (product.amount * product.quantity * 100).toString(),
      'name': 'Make Payment',
      'description': product.description,
      'prefill': {'contact': '1234567890', 'email': 'example@example.com'},
      'external': {'wallets': ['paytm']}
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print('Error: $e');
    }
  }

  void _addToCart(Product product) {
    setState(() {
      if (!product.isAddedToCart) {
        cartItems.add(product);
        product.isAddedToCart = true;
      } else {
        cartItems.remove(product);
        product.isAddedToCart = false;
      }
    });
  }

  void _updateQuantity(int index, {required bool decrease}) {
    setState(() {
      if (decrease) {
        if (products[index].quantity > 1) {
          products[index].quantity--;
        }
      } else {
        products[index].quantity++;
      }
    });
  }
}

class CartPage extends StatelessWidget {
  final List<Product> cartItems;
  final Razorpay razorpay;

  CartPage({required this.cartItems, required this.razorpay});

  @override
  Widget build(BuildContext context) {
    int totalAmount = cartItems.fold(0, (sum, item) => sum + (item.amount * item.quantity));

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(cartItems[index].imagePath),
              title: Text(cartItems[index].name),
              subtitle: Text('₹${cartItems[index].amount} x ${cartItems[index].quantity}'),
              trailing: Text('₹${cartItems[index].amount * cartItems[index].quantity}'),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () => _openCheckout(context, totalAmount),
          child: Text('Proceed to Pay ₹$totalAmount'),
        ),
      ),
    );
  }

  void _openCheckout(BuildContext context, int totalAmount) {
    var options = {
      'key': 'rzp_test_hoTNZlS83wp135', // Use your Razorpay key
      'amount': (totalAmount * 100).toString(),
      'name': 'Make Payment',
      'description': 'Cart Payment',
      'prefill': {'contact': '1234567890', 'email': 'example@example.com'},
      'external': {'wallets': ['paytm']}
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print('Error: $e');
    }
  }
}
