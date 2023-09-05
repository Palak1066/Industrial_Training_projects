import 'package:flutter/material.dart';
import '/newpage.dart';
import 'newpage2.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main(){
  runApp(HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: Icons.home,
        nextScreen: Newpage(),
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        customTween: CurveTween(curve: Curves.bounceInOut),
        backgroundColor: Colors.blueAccent,
      )

      );
  }
}


