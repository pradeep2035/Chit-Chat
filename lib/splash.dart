
import 'dart:async';
import 'package:chit_chat/pages/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2), () { 
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
            child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset('assets/images/logobg.png'),
        )),
      ),
    );
  }
}
