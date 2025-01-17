import 'package:flutter/material.dart';
import 'package:portfolio/view/aboutme/aboutme.dart';
import '../certifications/certifications.dart';
import '../intro/introduction.dart';
import '../main/main_view.dart';
import '../projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      AboutMePage(),
      ProjectsView(),
      Certifications(),
    ]);
  }
}
