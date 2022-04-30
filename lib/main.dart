import 'package:flutter/material.dart';
import 'package:flutter_workshop_apr22/HomePage.dart';
import 'package:flutter_workshop_apr22/introScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter workshop',
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

