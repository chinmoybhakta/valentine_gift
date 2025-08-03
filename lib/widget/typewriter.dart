import 'dart:async';
import 'package:flutter/material.dart';

class TypewriterText extends StatefulWidget {
  final List<String> phrases;
  final TextStyle textStyle;
  final Duration typingSpeed;
  final Duration deleteSpeed;
  final Duration pauseDuration;

  const TypewriterText({
    super.key,
    required this.phrases,
    required this.textStyle,
    this.typingSpeed = const Duration(milliseconds: 100),
    this.deleteSpeed = const Duration(milliseconds: 50),
    this.pauseDuration = const Duration(seconds: 1),
  });

  @override
  _TypewriterTextState createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {
  String displayedText = "";
  int phraseIndex = 0;
  int charIndex = 0;
  bool isDeleting = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  void _startTyping() {
    timer = Timer.periodic(widget.typingSpeed, (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      setState(() {
        if (isDeleting) {
          if (displayedText.isNotEmpty) {
            displayedText = displayedText.substring(0, displayedText.length - 1);
          } else {
            isDeleting = false;
            phraseIndex = (phraseIndex + 1) % widget.phrases.length;
            charIndex = 0; // Reset character index
            timer.cancel();
            _startTyping();
          }
        } else {
          if (charIndex < widget.phrases[phraseIndex].length) {
            displayedText += widget.phrases[phraseIndex][charIndex];
            charIndex++;
          } else {
            timer.cancel();
            _pauseBeforeDeleting();
          }
        }
      });
    });
  }

  void _pauseBeforeDeleting() {
    Future.delayed(widget.pauseDuration, () {
      if (mounted) {
        setState(() {
          isDeleting = true;
          _startDeleting();
        });
      }
    });
  }

  void _startDeleting() {
    timer = Timer.periodic(widget.deleteSpeed, (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      setState(() {
        if (displayedText.isNotEmpty) {
          displayedText = displayedText.substring(0, displayedText.length - 1);
        } else {
          isDeleting = false;
          phraseIndex = (phraseIndex + 1) % widget.phrases.length;
          charIndex = 0;
          timer.cancel();
          _startTyping();
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      displayedText,
      style: widget.textStyle,
    );
  }
}
