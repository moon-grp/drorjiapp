import 'package:drorji/login.dart';
import 'package:drorji/onboarding.dart';
import 'package:drorji/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dr orji telemedicine',
        home: Scaffold(
          body: Onboarding(),
        ));
  }
}
