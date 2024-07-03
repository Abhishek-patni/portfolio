import 'dart:async';
import 'package:flutter/material.dart';
import '../../components/intro_components/animated_texts_componenets.dart';
import '../../components/splash_componenets/animated_loading_text.dart';
import '../../res/constants.dart';
import '../home/home.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 150,height: 150,),
            SizedBox(height: defaultPadding,),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
