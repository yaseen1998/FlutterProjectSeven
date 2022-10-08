// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List emailList = ['test'];
  List passwordList = ['test'];
  String email = '';
  String password = '';
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
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    "Speaky",
                    style: TextStyle(
                      color: Color.fromARGB(255, 188, 73, 255),
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Lottie.asset(
                    'assets/lotties/lottie_learning.json',
                    height: 300,
                  ),
                  SizedBox(
                    height: 80,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "Get started and improve your ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),
                          ),
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 188, 73, 255),
                            fontSize: 19,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('Grammar!'),
                              RotateAnimatedText('Vocabulary!'),
                              RotateAnimatedText('Speaking!'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              _buttonWidget()
            ],
          ),
        ),
      ),
    );
  }

  _buttonWidget() {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 79, 73, 100),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextButtonWidget(
              backgroundColor: const Color.fromARGB(255, 43, 38, 61),
              textColor: Colors.white,
              buttonLabel: "Register",
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: RegistrationScreen(
                      onChangeEmail: (value) {
                        setState(() {
                          emailList.add(value);
                        });
                      },
                      onChangePassword: (value) {
                        setState(() {
                          passwordList.add(value);
                        });
                      },
                      emailList: emailList,
                      passwordList: passwordList,
                    ),
                    type: PageTransitionType.bottomToTop,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: TextButtonWidget(
              backgroundColor: Colors.transparent,
              textColor: Colors.white,
              buttonLabel: "Sign In",
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    child: SignInScreen(
                      onChangeEmail: (value) {
                        setState(() {
                          emailList.add(value);
                        });
                      },
                      onChangePassword: (value) {
                        setState(() {
                          passwordList.add(value);
                        });
                      },
                      emailList: emailList,
                      passwordList: passwordList,
                    ),
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
