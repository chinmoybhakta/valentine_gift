import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/page/propose.dart';
import 'package:project/page/valentine.dart';

class splash002 extends StatefulWidget {
  const splash002({super.key});

  @override
  State<splash002> createState() => _splashState();
}

class _splashState extends State<splash002> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>valentine()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: CircleAvatar(
          backgroundImage:AssetImage("assets/tom2.gif"),
          radius: height*0.2,
        ),
      ),
    );
  }
}
