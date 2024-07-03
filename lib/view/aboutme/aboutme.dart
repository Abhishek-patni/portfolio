import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/aboutme_components/extra_animation.dart';
import '../../components/aboutme_components/select_collumn.dart';
import '../../components/aboutme_components/socail_links.dart';
import '../../components/projects_components/title_text.dart';
import '../../view model/getx_controllers/aboutme_controller.dart';

class AboutMePage extends StatelessWidget {
  final AboutMeController controller = Get.put(AboutMeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TitleText(prefix: 'About ', title: 'Me'),
              const SizedBox(height: 20),
              ProfileAvatar(),
              const SizedBox(height: 20),
              InfoText(),
              const SizedBox(height: 10),
              TweenAnimationText(),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SectionColumn(
                      title: 'Skills',
                      items: controller.skills.map((skill) => Text(skill)).toList(),
                    ),
                  ),
                  Expanded(
                    child: SectionColumn(
                      title: 'Hobbies',
                      items: controller.hobbies.map((hobby) => Text(hobby)).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 80),
              SocialLinks(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}