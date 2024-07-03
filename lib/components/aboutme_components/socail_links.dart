import 'package:flutter/material.dart'
    ''
    '';
import 'package:flutter_svg/svg.dart';

import '../../res/constants.dart';
class SocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
            child: SvgPicture.asset(
              'assets/icons/github.svg',
              color: Colors.white,
              height: 15,
              width: 15,
            ),
          ),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
            child: SvgPicture.asset(
              'assets/icons/linkedin.svg',
              color: Colors.white,
              height: 15,
              width: 15,
            ),
          ),
        ),
      ],
    );
  }
}