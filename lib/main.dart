import 'package:flutter/material.dart';
import 'package:project/screens/home_screen.dart';
import 'package:project/screens/screens.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}
