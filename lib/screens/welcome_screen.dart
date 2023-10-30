import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 8)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;
    double myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: myheight,
        width: mywidth,
        decoration: const BoxDecoration(
          color: Color(0xFFFFEBEE),
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage("assets/logo.png")),
        ),
        child: Center(
          child: new CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          ),
        ),
      ),
    );
  }
}
