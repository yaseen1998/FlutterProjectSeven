import 'package:flutter/material.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class RegistrationScreen extends StatefulWidget {
  final Function(String) onChangeEmail;
  final Function(String) onChangePassword;
  final List emailList;
  final List passwordList;
  const RegistrationScreen({
    super.key,
    required this.onChangeEmail,
    required this.onChangePassword,
    required this.emailList,
    required this.passwordList,
  });

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isPasswordVisible = true;
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
              MaterialPageRoute(
                builder: (context) {
                  return const WelcomeScreen();
                },
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: const Color(0xff191720),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Create a new account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TextFieldWidget(
                      hintText: "Full Name",
                      inputType: TextInputType.name,
                    ),
                    SignInFieldWidget(
                      onChangedInput: (value) {
                        widget.onChangeEmail(value);
                      },
                      inputType: TextInputType.emailAddress,
                    ),
                    const TextFieldWidget(
                      hintText: "Phone number",
                      inputType: TextInputType.phone,
                    ),
                    PasswordFieldWidget(
                      onChangedInput: (value) {
                        widget.onChangePassword(value);
                      },
                      isPasswordVisible: isPasswordVisible,
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You already have an account? ",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Cairo', fontSize: 16),
                  ),
                  const SizedBox(width: 7),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Sign-in.",
                      style: TextStyle(
                          color: Color.fromARGB(255, 188, 73, 255),
                          fontFamily: 'Cairo',
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, top: 20),
                child: TextButtonWidget(
                  backgroundColor: Colors.white,
                  textColor: const Color.fromARGB(255, 188, 73, 255),
                  buttonLabel: "Register",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignInScreen(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
