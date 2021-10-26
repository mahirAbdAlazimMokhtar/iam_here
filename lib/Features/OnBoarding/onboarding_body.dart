import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iam_here_doctor/Features/LoginScreen/login_screen_body.dart';
import 'package:iam_here_doctor/Features/LoginScreen/login_view.dart';
import 'package:iam_here_doctor/Features/UserHomeScreen/Screen/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingBody extends StatefulWidget {
  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => LoginScreenView()),
    );
  }




  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: const Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.only(top: 16, right: 16),
        ),
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 70,
        child: ElevatedButton(
          child: const  Text(
            'Let\s go right away!',
            style:  TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Hi Iam Here",
          body:
          " that is test code for iam here .",
          image: buildImage('assets/image/onboarding1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
          "lets stay here.",
          image: buildImage('assets/image/onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body:
          "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          image: buildImage('assets/image/onboarding3.png'),
          decoration: pageDecoration,
        ),

      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.easeInBack,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
  Widget buildImage(String path)=> Center(child: Image.asset(path, width:350));
}

class  HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:HomeScreenUser(),
    );
  }
}