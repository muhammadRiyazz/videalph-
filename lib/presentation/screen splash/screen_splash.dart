import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../screen login/screen_login.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    gotonext(context: context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: TextLiquidFill(
          waveDuration: const Duration(seconds: 3),
          text: 'VIDEALPHA',
          //boxWidth: 200,
          waveColor: Color.fromARGB(255, 168, 42, 61),
          textStyle: const TextStyle(
            fontFamily: 'Viga',
            color: Colors.white,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          ),
          boxHeight: 300.0,
        ),
      ),
    );
  }

  gotonext({required BuildContext context}) async {
    await Future.delayed(const Duration(seconds: 5));

    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return ScreenLogin();
      },
    ));
  }
}
