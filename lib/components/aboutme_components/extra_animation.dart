import 'package:flutter/material.dart';

import '../../view model/responsive.dart';


class TweenAnimationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 13, end: 15),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          'I\'m capable of creating excellent mobile apps, handling${Responsive.isLargeMobile(context) ? '\n' : ''}every step from ${!Responsive.isLargeMobile(context) ? '\n' : ''}concept to deployment.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value.toDouble()),
        );
      },
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: Responsive.isDesktop(context) ? 120 : 80,
      backgroundImage: AssetImage('assets/images/Images.png'),
    );
  }
}

class InfoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, I am Abhishek Patni',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
