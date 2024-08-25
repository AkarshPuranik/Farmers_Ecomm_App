import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _supplyNoController = TextEditingController();
  final TextEditingController _sellerIdController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _productController = TextEditingController();
  final TextEditingController _varietyController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _organicController = TextEditingController();
  final TextEditingController _frequencyController = TextEditingController();
  final TextEditingController _verifiedByGeeComController = TextEditingController();
  final TextEditingController _deliveryOptionsController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _upiController = TextEditingController();
  bool _showMobileField = false;
  bool _showUpiField = false;

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = pickedFile;
    });
  }

  Future<void> _uploadData() async {
    try {
      if (_image != null) {
        final storageRef = FirebaseStorage.instance
            .ref()
            .child('product_images')
            .child('${DateTime.now().millisecondsSinceEpoch}.jpg');
        await storageRef.putFile(File(_image!.path));
        final imageUrl = await storageRef.getDownloadURL();

        await FirebaseFirestore.instance.collection('products').add({
          'supplyNo': _supplyNoController.text,
          'sellerId': _sellerIdController.text,
          'category': _categoryController.text,
          'product': _productController.text,
          'variety': _varietyController.text,
          'quantity': _quantityController.text,
          'price': _priceController.text,
          'organic': _organicController.text,
          'frequency': _frequencyController.text,
          'verifiedByGeeCom': _verifiedByGeeComController.text,
          'deliveryOptions': _deliveryOptionsController.text,
          'imageUrl': imageUrl,
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Product data uploaded successfully')),
        );

        _clearData();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please pick an image')),
        );
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to upload data')),
      );
    }
  }

  Future<void> _clearData() async {
    setState(() {
      _image = null;
      _supplyNoController.clear();
      _sellerIdController.clear();
      _categoryController.clear();
      _productController.clear();
      _varietyController.clear();
      _quantityController.clear();
      _priceController.clear();
      _organicController.clear();
      _frequencyController.clear();
      _verifiedByGeeComController.clear();
      _deliveryOptionsController.clear();
      _mobileController.clear();
      _upiController.clear();
      _showMobileField = false;
      _showUpiField = false;
    });
  }

  void _toggleMobileField() {
    setState(() {
      _showMobileField = !_showMobileField;
    });
  }

  void _toggleUpiField() {
    setState(() {
      _showUpiField = !_showUpiField;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.grey[200],
                    child: _image == null
                        ? Center(child: Text('Pick an image'))
                        : Image.file(File(_image!.path), fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Basic Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 10),
              _buildTextField(_supplyNoController, 'Supply No'),
              _buildTextField(_sellerIdController, 'Seller ID'),
              _buildTextField(_categoryController, 'Category'),
              _buildTextField(_productController, 'Product'),
              _buildTextField(_varietyController, 'Variety'),
              _buildTextField(_quantityController, 'Available Quantity'),
              _buildTextField(_priceController, 'Price (₹)'),
              _buildTextField(_organicController, 'Organic/Natural'),
              _buildTextField(_frequencyController, 'Frequency'),
              _buildTextField(_verifiedByGeeComController, 'Verified By GeeCom'),
              SizedBox(height: 20),
              Text('Delivery Options', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 10),
              _buildTextField(_deliveryOptionsController, 'Delivery Options'),
              SizedBox(height: 20),
              if (_showMobileField)
                _buildTextField(_mobileController, 'Enter Mobile Number'),
              if (_showUpiField)
                _buildTextField(_upiController, 'Enter UPI ID'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: _toggleMobileField,
                    icon: Icon(Icons.phone),
                    label: Text('Interested'),
                  ),
                  ElevatedButton.icon(
                    onPressed: _toggleUpiField,
                    icon: Icon(Icons.shopping_cart),
                    label: Text('Order Now'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.list_alt),
                    label: Text('All Supplies of this Seller'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _uploadData,
                child: Text('Upload Data'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
              ElevatedButton(
                onPressed: _clearData,
                child: Text('Clear Data'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
