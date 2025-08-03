import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widget/typewriter.dart';

class Splash003 extends StatefulWidget {
  const Splash003({super.key});

  @override
  State<Splash003> createState() => _SplashState();
}

class _SplashState extends State<Splash003> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100.h),
                CircleAvatar(
                  backgroundImage:const AssetImage("assets/tom3.gif"),
                  radius: 200.r,
                ),
                SizedBox(height: 100.h),
                Padding(
                  padding: EdgeInsets.all(8.r),
                  child: TypewriterText(phrases: const [
                    "💫✨তোমাকে খুব যত্ন করে কিছু বলার আছে…💫✨",
                    "🌸💖জীবনের প্রতিটি ধাপে, প্রতিটি নিঃশ্বাসে—সুখে😊, দুঃখে😔, হাসিতে😄, অশ্রুতে🥺—তোমার হাত ধরে পাশে থাকতে চাই।🌸💞",
                    "🤝তোমার ছোট্ট হাতটা চিরকাল ভালোবাসার বন্ধনে জড়িয়ে রাখতে চাই, 😊💕🌈",
                    "🌠তোমার প্রতিটা স্বপ্নকে🌙 নিজের মনে করে, তোমার সঙ্গে মিলিয়ে নতুন একটা রঙিন পৃথিবী গড়তে চাই।💖🏡",
                    "🎀💫তুমি জানো তো, এই মনখানা কারও জন্যই এতটা নরম হয়নি—শুধু তোমার জন্য হয়েছে।🫶",
                    "🧩তুমিই একমাত্র, যে আমার টুকরো টুকরো মনকে জোড়া লাগাতে পারে।💓",
                    "🌙🌌তুমি যদি অনুমতি দাও, আমি সারাটি জীবন তোমার ছায়ার মতো পাশে থেকে যাবো।👣",
                    "🧡আমি চাইনি কাউকে, আমি চেয়েছি শুধুই তোমাকে।🌷🌼",
                    "👑তুমি—আমার মনের রাজ্যে চিরকালীন রাজকন্যা, 💙✨চাঁদের বুড়ি✨💙",
                    "💍তুমি কি রাজি আছো, আমার জীবনের সবচেয়ে সুন্দর অধ্যায়টা একসঙ্গে লিখতে?💓📖👫"
                  ], textStyle: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.pink), ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
