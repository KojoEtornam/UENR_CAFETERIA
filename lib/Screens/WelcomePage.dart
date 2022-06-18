import 'package:flutter/material.dart';
import 'package:uenr_food/Widgets/BackgroundImage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/uenr-logo-768x998.png'),
                  radius: 60,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
