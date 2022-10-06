import 'package:flutter/material.dart';
import 'package:project/shaker/coursesSecreen.dart';
import 'package:project/shaker/welcomeScreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return coursesScreen();
  }
}
