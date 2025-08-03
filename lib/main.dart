import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:project/page/splash.dart';

final player = AudioPlayer();

void _playMusic() async {
  await player.setReleaseMode(ReleaseMode.loop); // Loop music
  await player.play(AssetSource('Dariye Tomari Sohore.mp3'));
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _playMusic();
  runApp(ValentineApp());
}

class ValentineApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.pink,
          body: splash()
      ),
    );
  }
}