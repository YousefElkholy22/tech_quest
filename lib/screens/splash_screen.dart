import 'package:flutter/material.dart';
import 'package:tech_quest/constants/mycolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  
  static String id =  'SplashScreen';




  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('OnBoardingView');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:myBlue,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               Text('TechQuest',
               style:  TextStyle(
                 color: Colors.white,
                 fontSize: 50


               ),)
          ],
        ),
      )
    );
  }
}
