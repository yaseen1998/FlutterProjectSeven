import 'package:flutter/material.dart';
import 'package:project/Home.dart';
import 'package:project/screen/drawe.dart';

import './screen/screenx.dart';

void main() {
  runApp(MaterialApp(
    color: Color(0xff191720),
    darkTheme: ThemeData.dark(),
    theme: ThemeData(
      visualDensity: VisualDensity(),
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Welcome_Screen(
        // backgroundColor: Color(0xff191720),
        // //   drawer: MyDrawer(),
        // appBar: AppBar(
        //   backgroundColor: Color(0xff191720),

        );
  }
}
