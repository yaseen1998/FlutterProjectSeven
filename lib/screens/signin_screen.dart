// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project/screens/home_screen.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class SignInScreen extends StatefulWidget {
  final Function(String) onChangeEmail;
  final Function(String) onChangePassword;
  final List emailList;
  final List passwordList;
  const SignInScreen({
    super.key,
    required this.onChangeEmail,
    required this.onChangePassword,
    required this.emailList,
    required this.passwordList,
  });

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isPasswordVisible = true;
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome back!",
                      style: TextStyle(fontFamily: 'Cairo',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SignInFieldWidget(
                      onChangedInput: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      inputType: TextInputType.text,
                    ),
                    PasswordFieldWidget(
                      onChangedInput: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      isPasswordVisible: isPasswordVisible,
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account",
                    style: TextStyle(color: Colors.white,fontFamily: 'Cairo',),
                  ),
                  const SizedBox(width: 7),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegistrationScreen(
                              onChangeEmail: (value) {
                                widget.onChangeEmail(value);
                              },
                              onChangePassword: (value) {
                                widget.onChangePassword(value);
                              },
                              emailList: widget.emailList,
                              passwordList: widget.passwordList,
                            );
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "Register.",
                      style: TextStyle(fontFamily: 'Cairo',
                        color: Color.fromARGB(255, 188, 73, 255),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, top: 20),
                child: TextButtonWidget(
                  backgroundColor: Colors.grey.shade800,
                  textColor: Colors.white,
                  buttonLabel: "Sign-in",
                  onTap: () {
                    if (widget.emailList.contains(email) &&
                        widget.passwordList.contains(password)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Error in sign-in information."),
                          duration: Duration(seconds: 5),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
