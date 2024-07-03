import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/view/aboutme/aboutme.dart';
import '../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.grey,
              wordSpacing: 2,
              fontSize: value,
            ),
            children: [
              const TextSpan(
                text: "Greetings! I'm Abhishek Patni, a BCA graduate from",
              ),
              TextSpan(
                text: Responsive.isLargeMobile(context) ? '\n' : '',
              ),
              const TextSpan(
                text: "DY Patil International.",
              ),
              TextSpan(
                text: !Responsive.isLargeMobile(context) ? '\n' : '',
              ),
              const TextSpan(
                text: " specializing in.....",
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMePage(),),);
                  },
                  child: const Text(
                    'TAP ABOUTME',
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        );
      },
    );
  }
}
