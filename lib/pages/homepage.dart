import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gee_com/auth/web_view.dart';
import 'package:gee_com/crop_content/crop_management.dart';
import 'package:gee_com/pages/video_chat.dart';

import 'package:gee_com/pages/alert.dart';
import 'package:gee_com/pages/chatbot.dart'; // Re-adding the chatbot import
import 'package:gee_com/pages/ecomm.dart';
import 'package:gee_com/pages/grid_page.dart';
import 'package:gee_com/pages/hindi_homepage.dart';
import 'package:gee_com/pages/login.dart';
import 'package:gee_com/pages/product_display.dart';
import 'package:gee_com/pages/profile_page.dart';
import 'package:gee_com/pages/weather.dart';
import 'package:gee_com/weed_content/weed_management.dart';
import 'package:gee_com/disease_content/disease_management.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../pages/notificationpage.dart';
import '../pages/share.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String? userId;

  final List<String> banners = [
    'assets/images/banner1.jpg',
    'assets/images/b2.jpg',
    'assets/images/b3.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _checkAuthentication();
  }

  Future<void> _checkAuthentication() async {
    final user = _auth.currentUser;
    if (user != null) {
      setState(() {
        userId = user.uid;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        title: const Text('Dashboard', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBannersSlider(),
            const SizedBox(height: 16.0),
            _buildFeatureSection(),
            const SizedBox(height: 16.0),
            _buildFeatureGrid(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomAppBar(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildBannersSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 1.0,
      ),
      items: banners.map((banner) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(banner),
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildFeatureSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.green.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Discover New Features',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Explore our latest updates and features designed to enhance your experience.',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureGrid() {
    final List<String> imagePaths = [
      'assets/images/cropmanagement.jpg',
      'assets/images/insectm.jpg',
      'assets/images/diseasem.webp',
      'assets/images/call.png',
      'assets/images/store.png',
      'assets/images/vegetable (1).png',
      'assets/images/seller.png',
      'assets/images/camera.jpg',
      'assets/images/alert.jpg',
    ];
    final List<String> titles = [
      'Crop Management',
      'Weed Management',
      'Disease Management',
      'Call with expert',
      'Shop',
      'Buyers Page',
      'Sellers Page',
      'Disease Identifier',
      'Daily Market Price of Commodities',
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: imagePaths.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => _getPageByIndex(index)),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  imagePaths[index],
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                titles[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _getPageByIndex(int index) {
    switch (index) {
      case 0:
        return Crop_Management();
      case 1:
        return Weed();
      case 2:
        return Disease_Management();
      case 3:
        return const HomeScreen();
      case 4:
        return FarmEquipmentPage();
      case 5:
        return ProductDisplayPage();
      case 6:
        return ProductDetailPage();
      case 7:
        return ProductDetailPage();
      case 8:
        return AlertsPage();
      case 9: // Adding a case for chatbot
        return Home();
      default:
        return const Scaffold(
          body: Center(child: Text("Page not found")),
        );
    }
  }

  Widget _buildQuickLink(String title, IconData icon) {
    return InkWell(
      onTap: () {
        switch (title) {
          case 'Notifications':
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NotificationPage(
                      registrationDateTime: null)),
            );
            break;
          case 'Hindi Dashboard':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HindiHomepage()),
            );
            break;
          case 'Share':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SharePage()),
            );
            break;

        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white),
          Text(title, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      color: Colors.green,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildQuickLink('Notifications', Icons.notifications_outlined),
            _buildQuickLink('Hindi Dashboard', Icons.dashboard),
            _buildQuickLink('Share', Icons.share),

          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              if (userId != null) {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage(userId: userId!)),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("User ID not available")),
                );
              }
            },
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Alert'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WeatherPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('PM Kisan Samman Nidhi'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebViewPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () async {
              await _auth.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
