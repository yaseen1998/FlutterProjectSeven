import 'package:flutter/material.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isPasswordVisible = true;
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
                MaterialPageRoute(
                  builder: (context) {
                    return const WelcomeScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.arrow_back)),
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
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 20),
                    const TextFieldWidget(
                      hintText: "Full Name",
                      inputType: TextInputType.name,
                    ),
                    const TextFieldWidget(
                      hintText: "Email",
                      inputType: TextInputType.emailAddress,
                    ),
                    const TextFieldWidget(
                      hintText: "Phone number",
                      inputType: TextInputType.phone,
                    ),
                    PasswordFieldWidget(
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
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 7),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Sign-in.",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, top: 20),
                child: TextButtonWidget(
                  backgroundColor: Colors.white,
                  buttonLabel: "Register",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
