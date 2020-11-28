import 'package:flutter/material.dart';
import 'package:korean_app/constants.dart';
import 'package:korean_app/Screens/Login/login_screen.dart';
import 'package:korean_app/constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(101,191,249,1),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}
