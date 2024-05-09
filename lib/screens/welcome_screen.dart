import 'package:flutter/material.dart';
import 'package:messageme_app/screens/registration_screen.dart';
import 'package:messageme_app/screens/sign_screen.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String ScreenRoute = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                height: 180,
                child: Image.asset("images/massegelogo.png"),
              ),
              Text(
                'Massege',
                style: TextStyle(
                    color: Color.fromARGB(255, 16, 46, 112),
                    fontSize: 40,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          MyButton(
            color: Colors.yellow[900]!,
            title: "sign in",
            onPresed: () {
              Navigator.pushNamed(context, SignScreen.ScreenRoute);
            },
          ),
          MyButton(
            color: Colors.blue[800]!,
            title: 'register',
            onPresed: () {
              Navigator.pushNamed(context, RegistrationScreen.ScreenRoute);
            },
          ),
        ],
      ),
    );
  }
}
