import 'package:flutter/material.dart';
import 'package:project/widgets/LoginField.dart';
import 'package:project/widgets/passwordLogin.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class Registration_Ppage extends StatefulWidget {
  final Function(String) onChangemail;
  final Function(String) onChangePassword;
  final List youremail;
  final List Password;
  Registration_Ppage(
      {super.key,
      required this.onChangemail,
      required this.onChangePassword,
      required this.youremail,
      required this.Password});

  @override
  State<Registration_Ppage> createState() => _Registration_PpageState();
}

class _Registration_PpageState extends State<Registration_Ppage> {
  bool passwordvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
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
          child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "registration page",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Create a new account",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const TextFieldWidget(
                            hintText: "Name", inputType: TextInputType.name),
                        const SizedBox(
                          height: 25,
                        ),
                        LoginField(
                            onChangedInput: (value) {
                              widget.onChangemail(value);
                            },
                            hintText: "Email",
                            inputType: TextInputType.emailAddress),
                        const SizedBox(
                          height: 25,
                        ),
                        const TextFieldWidget(
                            hintText: "phone number",
                            inputType: TextInputType.phone),
                        const SizedBox(
                          height: 25,
                        ),
                        PasswordLogin(
                          onChangedInput: (value) {
                            widget.onChangePassword(value);
                          },
                          isPasswordVisible: passwordvisible,
                          onTap: () {
                            setState(() {
                              passwordvisible = !passwordvisible;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "You already have an account? ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "sign in",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  TextButtonWidget(
                    buttonLabel: "registration ",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignInScreen(
                              onChangemail: (value) {
                                widget.onChangemail(value);
                              },
                              onChangePassword: (value) {
                                widget.onChangePassword(value);
                              },
                              youremail: widget.youremail,
                              Password: widget.Password,
                            );
                          },
                        ),
                      );
                    },
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
