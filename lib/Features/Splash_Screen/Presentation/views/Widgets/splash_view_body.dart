import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bookly/Features/home_screen/Presentation/home_view/home_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:logoAssets,
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.fade,
       duration: 3000,
      backgroundColor: primaryColor,
    );
  }
}
