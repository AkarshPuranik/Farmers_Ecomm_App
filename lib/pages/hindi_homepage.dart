import 'dart:convert';
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
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:http/http.dart' as http;
import '../auth/config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../pages/notificationpage.dart';
import '../pages/share.dart';

class HindiHomepage extends StatefulWidget {
  final String token;
  const  HindiHomepage ({required this.token, Key? key}) : super(key: key);

  @override
  State< HindiHomepage > createState() => _DashboardState();
}

class _DashboardState extends State< HindiHomepage > {
  late String userId;
  TextEditingController _todoTitle = TextEditingController();
  TextEditingController _todoDesc = TextEditingController();
  List? items;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  // Example banners data (replace with your actual banners)
  List<String> banners = [
    'assets/images/banner1.jpg',
    'assets/images/b2.jpg',
    'assets/images/b3.jpg',
  ];

  @override
  void initState() {
    super.initState();
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);
    userId = jwtDecodedToken['_id'];
    getTodoList(userId);
  }

  void addTodo() async {
    if (_todoTitle.text.isNotEmpty && _todoDesc.text.isNotEmpty) {
      var regBody = {
        "userId": userId,
        "title": _todoTitle.text,
        "desc": _todoDesc.text
      };

      var response = await http.post(Uri.parse(addtodo),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody));

      var jsonResponse = jsonDecode(response.body);

      print(jsonResponse['status']);

      if (jsonResponse['status']) {
        _todoDesc.clear();
        _todoTitle.clear();
        Navigator.pop(context);
        getTodoList(userId);
      } else {
        print("SomeThing Went Wrong");
      }
    }
  }

  void getTodoList(userId) async {
    var regBody = {"userId": userId};

    var response = await http.post(Uri.parse(getToDoList),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody));

    var jsonResponse = jsonDecode(response.body);
    items = jsonResponse['success'];

    setState(() {});
  }

  void deleteItem(id) async {
    var regBody = {"id": id};

    var response = await http.post(Uri.parse(deleteTodo),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody));

    var jsonResponse = jsonDecode(response.body);
    if (jsonResponse['status']) {
      getTodoList(userId);
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
        title: Text(
          'डैशबोर्ड', // Title for the app bar
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.language, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  HindiHomepage (token: widget.token)),
              );
              // Handle cart icon tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBannersSlider(), // Banner slider with dots
            SizedBox(height: 16.0), // Spacer between banner and feature section

            // Feature section replacing the search bar
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.green.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'नई विशेषताएँ खोजें',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'हमारे नवीनतम अपडेट और विशेषताओं की खोज करें जो आपके अनुभव को बेहतर बनाने के लिए डिज़ाइन की गई हैं।',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.green.shade800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0), // Spacer between feature section and grid

            // 9-image grid
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 9, // Number of grid items
              itemBuilder: (BuildContext context, int index) {
                // Replace with your image paths and titles
                List<String> imagePaths = [
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
                List<String> titles = [
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

                return InkWell(
                  onTap: () {
                    // Navigate to appropriate page based on index
                    Widget destinationPage;
                    switch (index) {
                      case 0:
                        destinationPage = Crop_Management();
                        break;
                      case 1:
                        destinationPage = Weed();
                        break;
                      case 2:
                        destinationPage = Disease_Management();
                        break;
                      case 3:
                        destinationPage = HomeScreen(); // Updated to correct page
                        break;
                      case 4:
                        destinationPage = FarmEquipmentPage(); // Updated to correct page
                        break;
                      case 5:
                        destinationPage = ProductDisplayPage();
                        break;
                      case 6:
                        destinationPage = ProductDetailPage();
                        break;
                      case 7:
                        destinationPage = ProductDetailPage();
                        break;
                      case 8:
                        destinationPage = AlertsPage();
                        break;
                    // Add more cases for other indices
                      default:
                        destinationPage = Scaffold(
                          appBar: AppBar(
                            title: Text(titles[index]),
                          ),
                          body: Center(
                            child: Text(titles[index]),
                          ),
                        );
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => destinationPage),
                    );
                  },
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
                            imagePaths[index], // Image path for current item
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            titles[index], // Title for current item
                            textAlign: TextAlign.center,
                            style: TextStyle(
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildQuickLink('सूचनाएँ', Icons.notifications_outlined),
              _buildQuickLink('डैशबोर्ड', Icons.dashboard),
              _buildQuickLink('शेयर', Icons.share),
            ],
          ),
        ),
      ),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildBannersSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 1.0,
      ),
      items: banners.map((banner) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(banner),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildQuickLink(String title, IconData icon) {
    return InkWell(
      onTap: () {
        // Handle quick link tap
        switch (title) {
          case 'सूचनाएँ':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage(registrationDateTime: null,)),
            );
            break;
          case 'डैशबोर्ड':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Dashboard (token: widget.token)),
            );
            break;
          case 'शेयर':
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
          Text(title, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Removed UserAccountsDrawerHeader

          ListTile(
            leading: Icon(Icons.person),
            title: Text('प्रोफाइल'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage(userId: '',)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('सेटिंग्स'),
            onTap: () {
              // Handle settings tap
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('अलर्ट'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WeatherPage()), // Assuming AlertPage is the correct page
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('लॉगआउट'),
            onTap: () async {
              // Handle logout
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
          ),
        ],
      ),
    );
  }}
