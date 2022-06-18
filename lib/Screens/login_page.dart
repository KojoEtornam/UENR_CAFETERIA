import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uenr_food/palatte.dart';
import 'package:uenr_food/uti/colors.dart';
import '../Widgets/BackgroundImage.dart';
import '../Widgets/RoundeButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    child: Center(
                      child: Text(
                        'UENR Cafeteria',
                        style: kHeading,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.4,
                  ),
                  Text(
                    'Welcome ',
                    style: ksubheading,
                  ),
                  SizedBox(
                    height: 350,
                  ),
                  RoundedButton(
                      text: 'Login',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      color: Colors.grey,
                      textColor: Colors.black),
                  RoundedButton(
                      text: 'Signup',
                      press: () {},
                      color: Colors.grey,
                      textColor: Colors.black),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
