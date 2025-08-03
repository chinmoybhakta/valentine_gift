import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/page/propose.dart';
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
      Navigator.push(context, MaterialPageRoute(builder: (context)=>valentine()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircleAvatar(
          backgroundImage:AssetImage("assets/tom2.gif"),
          radius: height*0.2,
        ),
      ),
    );
  }
}
