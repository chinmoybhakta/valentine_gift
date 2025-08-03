import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/page/splash003.dart';

class Valentine extends StatefulWidget {
  const Valentine({super.key});

  @override
  _ValentineScreenState createState() => _ValentineScreenState();
}

class _ValentineScreenState extends State<Valentine> {
  bool vanishButton = false;
  double yesSize = 18.r;
  double noSize = 18.r;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/tom.gif"),
            SizedBox(height: 20.h),
            Text(
              "Will you be my Valentine?",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.pink),
              textAlign: TextAlign.center, // Centers text
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisSize: MainAxisSize.min, // Keeps buttons close together
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Splash003())),
                  child: Text(
                    "Yes",
                    style: TextStyle(fontSize: yesSize),
                  ),
                ),
                SizedBox(width: 20.h),
                (vanishButton)
                    ? const SizedBox()
                    : ElevatedButton(
                  onPressed: () {
                      setState(() {
                        yesSize += 5.sp;
                        noSize = (noSize < 5.sp) ? 5.sp : noSize - 3.sp;
                        vanishButton =
                        (yesSize > 150.sp);
                      });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text(
                    "No",
                    style: TextStyle(fontSize: noSize),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
