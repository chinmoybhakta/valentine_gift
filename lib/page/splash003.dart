import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/widget/typewriter.dart';

class splash003 extends StatefulWidget {
  const splash003({super.key});

  @override
  State<splash003> createState() => _splashState();
}

class _splashState extends State<splash003> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.pinkAccent[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage:AssetImage("assets/tom3.gif"),
                radius: height*0.2,
              ),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TypewriterText(phrases: [
                  "💫প্রিয়ন্তি, আমি জানি আমি অসাবধানী।💫",
                  "🌸আমি জানি, তুমি আরও বেশি যত্ন চাও।🌸",
                  "কিন্তু আমি অসহায়।😊💕",
                  "সময় তোমাকে বলবে, আমি কী করছি।💖",
                  "🎀তুমি জানো, আমার কেউ নেই, শুধু তুমি আছো।",
                  "শুধু তুমিই আমাকে ঠিক করতে পারো।",
                  "🌙এই পৃথিবীতে ৭০০ বিলিয়ন মানুষ বাস করে,",
                  "কিন্তু আমি ভালোবাসি মাত্র একজনকে।🌷",
                  "সে হলে তুমি, 💙প্রিয়ন্তি।💙",
                  "আর আমি আগের মতোই ভালোবাসবো তোমাকে চিরকাল। 💓",
                  "💕শুধু আমার প্রকাশভঙ্গি একটু ভিন্ন।💕"
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
