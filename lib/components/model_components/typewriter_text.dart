import 'dart:async';
import 'package:flutter/material.dart';


class TypewriterText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Duration delay;

  const TypewriterText({
    Key? key,
    required this.text,
    this.style = const TextStyle(fontSize: 16),
    this.delay = const Duration(milliseconds: 100),
  }) : super(key: key);

  @override
  _TypewriterTextState createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {
  String _displayedText = "";
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  void _startTyping() {
    Timer.periodic(widget.delay, (timer) {
      if (_currentIndex < widget.text.length) {
        setState(() {
          _displayedText += widget.text[_currentIndex];
          _currentIndex++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayedText,
      style: widget.style,
    );
  }
}
