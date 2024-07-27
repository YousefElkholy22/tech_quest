import 'package:flutter/material.dart';
import 'package:tech_quest/constants/mycolor.dart';

class RegestrScreeen extends StatelessWidget {
  const RegestrScreeen({super.key});
  static String id = 'RegestrScreeen';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlack,
      body: Center(child: Text('kareem Elkholy',style: TextStyle(color: myBlue,fontSize: 30,fontWeight: FontWeight.bold),)),
    );
  }
}