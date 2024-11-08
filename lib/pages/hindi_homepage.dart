import 'package:flutter/material.dart';
import 'package:gee_com/crop_content/crop_management.dart';
import 'package:gee_com/pages/Video_chat.dart';
import 'package:gee_com/pages/alert.dart';
import 'package:gee_com/pages/ecomm.dart';
import 'package:gee_com/pages/grid_page.dart';
import 'package:gee_com/pages/homepage.dart';
import 'package:gee_com/pages/login.dart';
import 'package:gee_com/pages/product_display.dart';
import 'package:gee_com/pages/profile_page.dart';
import 'package:gee_com/pages/weather.dart';
import 'package:gee_com/weed_content/weed_management.dart';
import 'package:gee_com/disease_content/disease_management.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../pages/notificationpage.dart';
import '../pages/share.dart';

class HindiHomepage extends StatefulWidget {
  const HindiHomepage({Key? key}) : super(key: key);

  @override
  State<HindiHomepage> createState() => _HindiHomepageState();
}

class _HindiHomepageState extends State<HindiHomepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Banner images for the carousel slider
  final List<String> banners = [
    'assets/images/banner1.jpg',
    'assets/images/b2.jpg',
    'assets/images/b3.jpg',
  ];

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
        title: const Text(
          'डैशबोर्ड',
          style: TextStyle(color: Colors.white),
        ),
        actions: [


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBannersSlider(),
            const SizedBox(height: 16.0),
            _buildFeatureSection(),
            const SizedBox(height: 16.0),
            _buildGrid(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomAppBar(),
      drawer: _buildDrawer(),
    );
  }

  // Carousel Slider for banners
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

  // Section describing new features
  Widget _buildFeatureSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.green.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'नई विशेषताएँ खोजें',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'हमारे नवीनतम अपडेट और विशेषताओं की खोज करें जो आपके अनुभव को बेहतर बनाने के लिए डिज़ाइन की गई हैं।',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.green.shade800,
            ),
          ),
        ],
      ),
    );
  }

  // Grid layout for features
  Widget _buildGrid() {
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
      'फसल प्रबंधन',
      'खरपतवार प्रबंधन',
      'रोग प्रबंधन',
      'विशेषज्ञ से कॉल',
      'दूकान',
      'खरीदार पेज',
      'विक्रेता पेज',
      'रोग पहचानकर्ता',
      'कमोडिटी की दैनिक बाजार कीमत',
    ];
    final List<Widget> pages = [
      Crop_Management(),
      Weed(),
      Disease_Management(),
      HomeScreen(),
      FarmEquipmentPage(),
      ProductDisplayPage(),
      ProductDetailPage(),
      ProductDetailPage(),
      AlertsPage(),
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
      itemCount: titles.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () => _navigateToPage(pages[index]),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(8.0),
            ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    titles[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Navigation method
  void _navigateToPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Bottom navigation bar
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
            _buildQuickLink('सूचनाएँ', Icons.notifications_outlined, NotificationPage(registrationDateTime: null)),
            _buildQuickLink('डैशबोर्ड', Icons.dashboard, Dashboard()),
            _buildQuickLink('शेयर', Icons.share, SharePage()),
          ],
        ),
      ),
    );
  }

  // Quick links method
  Widget _buildQuickLink(String title, IconData icon, Widget page) {
    return InkWell(
      onTap: () => _navigateToPage(page),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white),
          Text(title, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  // Drawer for additional options
  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('प्रोफाइल'),
            onTap: () => _navigateToPage(ProfilePage(userId: '')),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('सेटिंग्स'),
            onTap: () => _navigateToPage(HomeScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('अलर्ट'),
            onTap: () => _navigateToPage(WeatherPage()),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('लॉगआउट'),
            onTap: () => _navigateToPage(SignInPage()),
          ),
        ],
      ),
    );
  }
}
