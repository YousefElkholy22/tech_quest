import 'package:flutter/material.dart';

import '../constants/mycolor.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed('RegestrScreeen');
      },
      child: const Text(
        'Skip',
        style: TextStyle(color: myGray, fontSize: 18),
      ),
    );
  }
}
