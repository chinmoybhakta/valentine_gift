import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/page/splash.dart';

final player = AudioPlayer();

void _playMusic() async {
  await player.setReleaseMode(ReleaseMode.loop); // Loop music
  await player.play(AssetSource('Dariye Tomari Sohore.mp3'));
  await ScreenUtil.ensureScreenSize();
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _playMusic();
  runApp(const ValentineApp());
}

class ValentineApp extends StatelessWidget {
  const ValentineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 947),
        minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          title: "Something...",
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              backgroundColor: Colors.black,
              body: Splash()
          ),
        );
      }
    );
  }
}