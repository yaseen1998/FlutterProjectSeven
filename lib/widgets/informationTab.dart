import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191720),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
