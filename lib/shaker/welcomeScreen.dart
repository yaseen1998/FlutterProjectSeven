import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image(
              image: AssetImage("images/Welcome.jpg"),
              width: 300,
              fit: BoxFit.fitWidth,
            ),
            Text(
              "Welcome to E-Learning",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text("The World's best way to improve your English",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 300,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text("Get Started"),
                icon: Icon(Icons.arrow_circle_right),
              ),
            )
          ],
        ),
      ),
    );
  }
}
