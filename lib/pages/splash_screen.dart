
import 'package:flutter/material.dart';
import 'package:gee_com/pages/login.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
class Splash extends StatefulWidget{
  const Splash ({Key?key}):super(key:key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navitagetohome();
  }
  _navitagetohome()async{
    await Future.delayed(Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SignInPage(),));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splashscreen.jpg'),
                fit: BoxFit.cover
            ),
          ),
        )
    );

  }
}
