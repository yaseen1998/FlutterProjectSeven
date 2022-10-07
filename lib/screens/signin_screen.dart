// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project/screens/courses_screen.dart';
import 'package:project/widgets/LoginField.dart';
import 'package:project/widgets/passwordLogin.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class SignInScreen extends StatefulWidget {
  final List youremail;
  final List Password;
  SignInScreen({Key? key, required this.youremail, required this.Password})
      : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isPasswordVisible = true;
  String myemail = '';
  String myPassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff191720),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              PageTransition(
                type: PageTransitionType.bottomToTop,
                child: const WelcomeScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: const Color(0xff191720),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome back!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 40),
                    LoginField(
                      hintText: "E-mail",
                      inputType: TextInputType.text,
                      onChangedInput: (value) {
                        setState(() {
                          myemail = value;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    PasswordLogin(
                      onChangedInput: (value) {
                        setState(() {
                          myPassword = value;
                        });
                      },
                      isPasswordVisible: isPasswordVisible,
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
              ),
              //? Don't have an account text.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 7),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) {
                    //         return Registration_Ppage();
                    //       },
                    //     ),
                    //   );
                    // },
                    child: const Text(
                      "Register.",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, top: 20),
                child: TextButtonWidget(
                  backgroundColor: Colors.grey.shade800,
                  buttonLabel: "Sign-in",
                  onTap: () {
                    if (widget.youremail.contains(myemail) &&
                        widget.Password.contains(myPassword)) {
                      Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return coursesScreen();
                      },
                    ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Error in password or email"),
                          duration: Duration(seconds: 5),
                        ),
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
