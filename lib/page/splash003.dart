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
                  "💫তোমাকে কিছু বলার আছে…💫",
                  "🌸জীবনের প্রতিটা মুহূর্তে, সুখে-দুঃখে, হাসি-কান্নায়, সাফল্যে-ব্যর্থতায়—তোমার পাশে থাকতে চাই।🌸",
                  "তোমার হাতটা চিরদিনের জন্য ধরতে চাই,😊💕",
                  "তোমার স্বপ্নগুলোকে নিজের স্বপ্ন করে গড়ে তুলতে চাই।💖",
                  "🎀তুমি জানো, আমার কেউ নেই, শুধু তুমি আছো।",
                  "শুধু তুমিই আমাকে ঠিক করতে পারো।",
                  "🌙তুমি যদি চাও, আমি সারাটা জীবন তোমার পাশে থেকে",
                  "কিন্তু আমি চাই মাত্র একজনকে।🌷",
                  "সে হলে তুমি, 💙চাঁদের বুড়ি💙",
                  "তুমি কি আমার জীবনসঙ্গী হতে চাও?💓"
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
