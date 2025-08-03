import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/page/splash002.dart';

class Propose extends StatefulWidget {
  const Propose({super.key});

  @override
  State<Propose> createState() => _ProposeState();
}

class Position {
  final double x;
  final double y;

  Position(this.x, this.y);
}

class _ProposeState extends State<Propose> {
  double yesSize = 18.sp;
  double noSize = 18.sp;
  int i = 1;

  @override
  Widget build(BuildContext context) {
    Map<int, Position> data = {
      1: Position(20.h, 100.w),
      2: Position(300.h, 250.w),
      3: Position(0, 0),
      4: Position(100.h, 200.w),
      5: Position(200.h, 10.w),
      6: Position(40.h, 10.w)
    };

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
                backgroundImage:const AssetImage("assets/jerry.gif"),
                radius: 80.r,
            ),
            SizedBox(height: 20.h),
            Text(
              "Are you angry with me?",
              style: TextStyle(color: Colors.blue, fontSize: 24.sp, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h),
            SizedBox(
              height: 400.h,
              width: 600.w,
              child: Stack(
                children: [
                  Positioned(
                    right: 100.w,
                    top: 20.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Splash002()));
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white, fixedSize: Size(100.w, 50.h)),
                      child: Text(
                        "No",
                        style: TextStyle(fontSize: yesSize),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    left: data[i]!.y,
                    top: data[i]!.x,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          i = (i == 6) ? 1 : i + 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red, fixedSize: Size(100.w, 50.h)),
                      child: AnimatedDefaultTextStyle(
                        style: TextStyle(fontSize: noSize),
                        duration: const Duration(milliseconds: 300),
                        child: Text("Yes", style: TextStyle(fontSize: noSize),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
