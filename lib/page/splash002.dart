import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/page/valentine.dart';

class Splash002 extends StatefulWidget {
  const Splash002({super.key});

  @override
  State<Splash002> createState() => _SplashState();
}

class _SplashState extends State<Splash002> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Valentine()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircleAvatar(
          backgroundImage:const AssetImage("assets/tom2.gif"),
          radius: 150.r,
        ),
      ),
    );
  }
}
