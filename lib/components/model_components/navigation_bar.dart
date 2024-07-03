import 'package:flutter/material.dart';
import 'package:portfolio/components/model_components/navigation_button_list.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            if (!Responsive.isLargeMobile(context))
              const NavigationButtonList(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
