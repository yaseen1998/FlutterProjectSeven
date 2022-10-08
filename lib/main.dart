import 'package:flutter/material.dart';
import 'package:project/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Cairo"),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
