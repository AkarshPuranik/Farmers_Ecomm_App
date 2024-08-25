import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gee_com/auth/config.dart';
import 'package:gee_com/pages/login.dart';
import 'package:velocity_x/velocity_x.dart';
import 'applogo.dart';
import 'package:http/http.dart' as http;

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isNotValidate = false;

  void registerUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var regBody = {
        "email": emailController.text,
        "password": passwordController.text
      };

      var response = await http.post(Uri.parse(registration),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody)
      );

      var jsonResponse = jsonDecode(response.body);

      if (jsonResponse['status']) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
      } else {
        print("Something Went Wrong");
      }
    } else {
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0XFF4CAF50), const Color(0XFF2E7D32)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomCenter,
                stops: [0.0, 0.8],
                tileMode: TileMode.mirror
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Add Circular Logo Image
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/kisan.jpg'), // Replace with your logo asset path
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Add some spacing
                  "CREATE YOUR ACCOUNT".text.size(22).white.make(),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: TextStyle(color: Colors.white),
                        errorText: _isNotValidate ? "Enter Proper Info" : null,
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        )
                    ),
                  ).p4().px24(),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.copy),
                          onPressed: () {
                            final data = ClipboardData(text: passwordController.text);
                            Clipboard.setData(data);
                          },
                        ),
                        prefixIcon: IconButton(
                          icon: Icon(Icons.password),
                          onPressed: () {
                            String passGen = generatePassword();
                            passwordController.text = passGen;
                            setState(() {});
                          },
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: TextStyle(color: Colors.white),
                        errorText: _isNotValidate ? "Enter Proper Info" : null,
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        )
                    ),
                  ).p4().px24(),
                  HStack([
                    GestureDetector(
                      onTap: registerUser,
                      child: VxBox(child: "Register".text.white.makeCentered().p16())
                          .green600.roundedLg.make().px16().py16(),
                    ),
                  ]),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                    },
                    child: HStack([
                      "Already Registered?".text.white.make(),
                      " Sign In".text.bold.white.make()
                    ]).centered().p16(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String generatePassword() {
  String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String lower = 'abcdefghijklmnopqrstuvwxyz';
  String numbers = '1234567890';
  String symbols = '!@#\$%^&*()<>,./';

  String password = '';
  int passLength = 20;
  String seed = upper + lower + numbers + symbols;
  List<String> list = seed.split('').toList();
  Random rand = Random();

  for (int i = 0; i < passLength; i++) {
    int index = rand.nextInt(list.length);
    password += list[index];
  }
  return password;
}
