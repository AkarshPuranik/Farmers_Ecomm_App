import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  final String userId;

  ProfilePage({required this.userId});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  String? _profilePictureUrl;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    try {
      DocumentSnapshot userData = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.userId)
          .get();
      if (userData.exists) {
        setState(() {
          nameController.text = userData['name'] ?? '';
          emailController.text = userData['email'] ?? '';
          phoneController.text = userData['phone'] ?? '';
          addressController.text = userData['address'] ?? '';
          _profilePictureUrl = userData['profile_picture'] ?? '';
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('User not found.')));
      }
    } catch (e) {
      print('Error loading user data: $e');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading user data.')));
    }
  }

  Future<void> _pickAndUploadProfilePicture() async {
    try {
      final ImagePicker _picker = ImagePicker();
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        final ref = FirebaseStorage.instance
            .ref()
            .child(
            'profile_pictures/${widget.userId}/${DateTime.now().millisecondsSinceEpoch}.png');
        await ref.putFile(File(image.path));
        String downloadURL = await ref.getDownloadURL();

        setState(() {
          _profilePictureUrl = downloadURL;
        });

        await FirebaseFirestore.instance
            .collection('users')
            .doc(widget.userId)
            .update({
          'profile_picture': downloadURL,
        });
      }
    } catch (e) {
      print('Error uploading profile picture: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Error uploading profile picture.')));
    }
  }

  Future<void> updateUserProfile() async {
    try {
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.userId)
          .get();
      if (doc.exists) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(widget.userId)
            .update({
          'name': nameController.text,
          'email': emailController.text,
          'phone': phoneController.text,
          'address': addressController.text,
        });
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Profile updated successfully!')));
      } else {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(widget.userId)
            .set({
          'name': nameController.text,
          'email': emailController.text,
          'phone': phoneController.text,
          'address': addressController.text,
          'profile_picture': _profilePictureUrl ?? '',
        });
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Profile created successfully!')));
      }
    } catch (e) {
      print('Error updating user profile: $e');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error updating profile.')));
    }
  }

  Future<void> clearUserData() async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.userId)
          .delete();
      if (_profilePictureUrl != null) {
        final ref = FirebaseStorage.instance.refFromURL(_profilePictureUrl!);
        await ref.delete();
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('User data cleared successfully!')));
      setState(() {
        nameController.clear();
        emailController.clear();
        phoneController.clear();
        addressController.clear();
        _profilePictureUrl = null;
      });
    } catch (e) {
      print('Error clearing user data: $e');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error clearing user data.')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Profile'),
        backgroundColor: Colors.green[700],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _pickAndUploadProfilePicture,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: _profilePictureUrl != null
                        ? NetworkImage(_profilePictureUrl!)
                        : AssetImage('assets/default_profile.png')
                    as ImageProvider,
                    child: _profilePictureUrl == null
                        ? Icon(Icons.camera_alt,
                        size: 50, color: Colors.white)
                        : null,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      _buildTextField(nameController, 'Name'),
                      SizedBox(height: 10),
                      _buildTextField(emailController, 'Email'),
                      SizedBox(height: 10),
                      _buildTextField(phoneController, 'Phone Number'),
                      SizedBox(height: 10),
                      _buildTextField(addressController, 'Address'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_validateInputs()) {
                            updateUserProfile();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Please fill all fields')));
                          }
                        },
                        child: Text('Save Changes'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[700],
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18, color: Colors.white),
                          foregroundColor: Colors.white, // Ensure the text color is white
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: clearUserData,
                        child: Text('Clear Information'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[700],
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18, color: Colors.white),
                          foregroundColor: Colors.white, // Ensure the text color is white
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String labelText) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  bool _validateInputs() {
    return nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        addressController.text.isNotEmpty;
  }
}
