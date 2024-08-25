import 'package:flutter/material.dart';
import 'package:gee_com/auth/product.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
 // Assuming this is where your Product class is defined

class CheckoutScreen extends StatefulWidget {
  final List<Product> cartItems;
  final String userAddress;

  CheckoutScreen({required this.cartItems, required this.userAddress});

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Payment Success'),
        content: Text('Payment was successful.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Payment Error'),
        content: Text('Payment failed. Please try again.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('External Wallet'),
        content: Text('External wallet selected.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void _openCheckout(Product product) {
    // Calculate total amount based on the quantity of the selected product
    int totalAmount = product.amount * product.quantity;

    // Convert the total amount to the smallest currency unit
    totalAmount *= 100;

    var options = {
      'key': 'rzp_test_hoTNZlS83wp135', // Replace with your Razorpay API key
      'amount': totalAmount.toString(), // Total amount in smallest currency unit
      'name': 'Make Payment',
      'description': 'Payment for ${product.name}',
      'prefill': {'contact': '1234567890', 'email': 'example@example.com'},
      'external': {'wallets': ['paytm']}
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print('Error: $e');
    }
  }

  void _startPayment() {
    // Assuming only one product is being checked out
    if (widget.cartItems.isNotEmpty) {
      _openCheckout(widget.cartItems.first);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Payment', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery Address',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(widget.userAddress), // Display user's address
            SizedBox(height: 20),
            Text(
              'Order Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  final product = widget.cartItems[index];
                  final totalCost = product.amount * product.quantity;

                  return ListTile(
                    leading: Image.asset(product.imagePath),
                    title: Text(product.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price: ₹${product.amount}'),
                        Text('Quantity: ${product.quantity}'),
                        Text('Total Cost: ₹$totalCost'),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _startPayment, // Trigger payment process
                child: Text('Buy Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
