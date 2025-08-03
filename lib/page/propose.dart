import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  double yesSize = 30;
  double noSize = 30;
  int i = 3;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Map<int, Position> data = {
      1: Position(height*0.3, width*0.2),
      2: Position(height*0.1, 0),
      3: Position(height*0.004, width*0.6),
      4: Position(height*0.3, width*0.5),
      5: Position(height*0.2, width*0.3),
      6: Position(0, 0),
    };

    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
                backgroundImage:AssetImage("assets/jerry.gif"),
                radius: height*0.1,
            ),
            SizedBox(height: 20),
            Text(
              "Are you angry with me?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Container(
              height: height*0.6,
              width: width*0.9,
              child: Stack(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash002()));
                    },
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: yesSize),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    left: data[i]!.y,
                    top: data[i]!.x,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          i = (i == 6) ? 1 : i + 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: AnimatedDefaultTextStyle(
                        style: TextStyle(fontSize: noSize),
                        duration: Duration(milliseconds: 300),
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
