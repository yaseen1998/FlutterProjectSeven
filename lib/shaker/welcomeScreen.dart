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
      backgroundColor: Color(0xff191720),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image(
              image: AssetImage("images/Welcome.png"),
              width: 300,
              fit: BoxFit.fitWidth,
            ),
            Text(
              "Welcome to E-Learning",
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text("The World's best way to improve your English",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 300,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 40, 31, 68),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                label: Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                icon: Icon(
                  Icons.arrow_circle_right,
                  size: 29,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
