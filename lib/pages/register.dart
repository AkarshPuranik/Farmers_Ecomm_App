import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:gee_com/pages/login.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isNotValidate = false;
  bool _isLoading = false;

  Future<void> registerUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      setState(() {
        _isLoading = true;
        _isNotValidate = false;
      });
      try {
        await _auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SignInPage()),
        );
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Registration failed: ${e.message}")),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    } else {
      setState(() {
        _isNotValidate = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter valid email and password")),
      );
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
              tileMode: TileMode.mirror,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/kisan.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ).p4().px24(),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
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
                          passwordController.text = generatePassword();
                          setState(() {});
                        },
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      errorStyle: TextStyle(color: Colors.white),
                      errorText: _isNotValidate ? "Enter Proper Info" : null,
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ).p4().px24(),
                  _isLoading
                      ? CircularProgressIndicator().centered()
                      : GestureDetector(
                    onTap: registerUser,
                    child: VxBox(child: "Register".text.white.makeCentered().p16())
                        .green600
                        .roundedLg
                        .make()
                        .px16()
                        .py16(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                    },
                    child: HStack([
                      "Already Registered?".text.white.make(),
                      " Sign In".text.bold.white.make()
                    ]).centered().p16(),
                  ),
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
  const String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String lower = 'abcdefghijklmnopqrstuvwxyz';
  const String numbers = '1234567890';
  const String symbols = '!@#\$%^&*()<>,./';

  const int passLength = 20;
  String seed = upper + lower + numbers + symbols;
  List<String> list = seed.split('');
  Random rand = Random();

  return List.generate(passLength, (index) => list[rand.nextInt(list.length)]).join();
}
