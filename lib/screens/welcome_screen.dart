// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreentate();
}

class _WelcomeScreentate extends State<WelcomeScreen>  {
List youremail = ['test'];
  List Password = ['test'];
  String myemail = '';
  String myPassword = '';
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
              Container(
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
                    child: Registration_Ppage(
                       onChangemail: (value) {
                            setState(() {
                             youremail.add(value);
                            });
                          },
                          onChangePassword: (value) {
                            setState(() {
                              Password.add(value);
                            });
                          },
                          youremail: youremail,
                          Password: Password,
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
              buttonLabel: "Sign In",
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    child: SignInScreen(
                      youremail: youremail,
                          Password: Password,
                          
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    )
            ],
          ),
        ),
      ),
    );
  }
}


