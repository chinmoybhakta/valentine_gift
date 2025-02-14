import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/page/splash003.dart';

class valentine extends StatefulWidget {
  @override
  _ValentineScreenState createState() => _ValentineScreenState();
}

class _ValentineScreenState extends State<valentine> {
  bool vanishButton = false;
  double yesSize = 30;
  double noSize = 30;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/tom.gif"),
            SizedBox(height: 20),
            Text(
              "Will you be my Valentine?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, // Centers text
            ),
            SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min, // Keeps buttons close together
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> splash003())),
                  child: Text(
                    "Yes",
                    style: TextStyle(fontSize: yesSize),
                  ),
                ),
                SizedBox(width: 20),
                (vanishButton)
                    ? SizedBox()
                    : ElevatedButton(
                  onPressed: () {
                      setState(() {
                        yesSize += 10;
                        noSize = (noSize < 10) ? 10 : noSize - 3;
                        vanishButton =
                        (yesSize > width * 0.4 || yesSize > height * 0.2);
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
