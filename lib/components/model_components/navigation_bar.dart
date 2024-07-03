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
        child: Responsive.isLargeMobile(context)
            ? Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 60,
            width: 60,
          ),
        )
            : Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/logo.png',
              height: Responsive.isDesktop(context) ? 100 : 60,
              width: Responsive.isDesktop(context) ? 100 : 60,
            ),
            const Spacer(flex: 2),
            if (!Responsive.isLargeMobile(context))
              const NavigationButtonList(),
            const Spacer(flex: 2),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
