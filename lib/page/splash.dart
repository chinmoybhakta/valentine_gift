import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project/page/propose.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Propose()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/moon.gif"),
      ),
    );
  }
}
