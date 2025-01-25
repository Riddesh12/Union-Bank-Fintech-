import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Design/home_page.dart';
import 'package:untitled3/Design/login_signup.dart';
import 'package:untitled3/query/biometric.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () async {
      BioMetricAuth.checkAuth();
      if(FirebaseAuth.instance.currentUser==null) {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => LoginSignup()),);
      } else {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => HomePage()),);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'LOGO UNION BANK',
        child: Center(
          child: Image.asset(
            'assets/unionBank.png',
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
