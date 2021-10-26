import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:iam_here_doctor/Core/Const/size_config.dart';
import 'package:iam_here_doctor/Features/OnBoarding/onboarding_view.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset('assets/image/logo.png'),
        nextScreen: const OnBoardingView(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white
    );
  }
}
