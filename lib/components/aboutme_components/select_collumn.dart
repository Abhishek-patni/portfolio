import 'package:flutter/material.dart';

import '../../view model/responsive.dart';

class SectionColumn extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const SectionColumn({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: Responsive.isDesktop(context) ? 40 : 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Column(children: items),
      ],
    );
  }
}
