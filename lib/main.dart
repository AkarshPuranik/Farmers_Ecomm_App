import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gee_com/pages/homepage.dart';
import 'package:gee_com/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:gee_com/pages/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(token: prefs.getString('token')));
}

class MyApp extends StatelessWidget {
  final String? token;

  const MyApp({Key? key, this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(token: token),
    );
  }
}

class SplashScreen extends StatefulWidget {
  final String? token;

  const SplashScreen({Key? key, this.token}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 2), () {}); // Adjust the delay as needed
    if (widget.token != null && !JwtDecoder.isExpired(widget.token!)) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashboard(token: widget.token!)),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Splash(); // Use your custom splash screen here
  }
}
