import 'package:flutter/material.dart';
import 'homepage.dart';
import 'loginpage.dart';
import 'signuppage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: {
        '/loadingPage': (context) => MyApp(),
        '/signup': (context) => SignupPage(),
        '/homepage': (context) => HomePage(),
      },
    );
  }
}
