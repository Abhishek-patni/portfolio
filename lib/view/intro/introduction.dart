import 'package:flutter/material.dart';
import '../../components/intro_components/intro_body.dart';
import '../../components/intro_components/side_menu_button.dart';
import '../../components/intro_components/social_media_list.dart';
import '../../view model/responsive.dart';


class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}



