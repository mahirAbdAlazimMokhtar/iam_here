import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'Features/Splash/splash_view.dart';
import 'Provider/auth.dart';


void main() {
  runApp(ChangeNotifierProvider(create: (_)=>Auth(),child:const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SplashView(),
      ),
    );
  }
}
