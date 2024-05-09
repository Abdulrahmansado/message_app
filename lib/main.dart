import 'package:flutter/material.dart';
import 'package:messageme_app/screens/chat_screen.dart';
import 'package:messageme_app/screens/registration_screen.dart';
import 'package:messageme_app/screens/sign_screen.dart';
import 'package:messageme_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
//import org.gradle.api.GradleException;

//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Me',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: ChatScreen(),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.ScreenRoute
          : WelcomeScreen.ScreenRoute,
      routes: {
        WelcomeScreen.ScreenRoute: (context) => WelcomeScreen(),
        SignScreen.ScreenRoute: (context) => SignScreen(),
        RegistrationScreen.ScreenRoute: (context) => RegistrationScreen(),
        ChatScreen.ScreenRoute: (context) => ChatScreen(),
      },
    );
  }
}
//how to switch from one page to another page ?
