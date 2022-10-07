// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191720),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Image(
                    image: AssetImage("assets/images/team_illustration.png"),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Welcome to American English",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const _ButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade800,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextButtonWidget(
              backgroundColor: Colors.white,
              buttonLabel: "Register",
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: Registration_Ppage(),
                    type: PageTransitionType.bottomToTop,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: TextButtonWidget(
              backgroundColor: Colors.transparent,
              buttonLabel: "Sign In",
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    child: const SignInScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
