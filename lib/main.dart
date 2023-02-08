import 'package:bookly/Features/Splash_Screen/Presentation/views/splash_view.dart';
import 'package:bookly/cores/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
    );
  }
}
