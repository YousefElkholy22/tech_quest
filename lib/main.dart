import 'package:flutter/material.dart';
import 'package:tech_quest/screens/splash_screen.dart';

import 'screens/on_boarding_view.dart';
import 'screens/regestration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) =>const SplashScreen(),
        OnBoardingView.id:(context)=>const OnBoardingView(),
        RegestrScreeen.id:(context)=>const RegestrScreeen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
