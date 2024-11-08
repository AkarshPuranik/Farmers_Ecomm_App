import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gee_com/pages/homepage.dart';
import 'package:gee_com/pages/login.dart';
import 'package:gee_com/pages/splash_screen.dart'; // Import the splash screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeeCom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: SplashScreen(), // Start with SplashScreen
      routes: {
        '/dashboard': (context) => const Dashboard(),
        '/login': (context) => SignInPage(),
      },
    );
  }
}
