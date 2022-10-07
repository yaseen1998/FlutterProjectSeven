import 'package:flutter/material.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class Registration_Ppage extends StatefulWidget {
  const Registration_Ppage({super.key});

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
        backgroundColor: Color(0xff191720),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: Color(0xff191720),
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
                        Text(
                          "registration page",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Create a new account",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextFieldWidget(
                            hintText: "Name", inputType: TextInputType.name),
                        SizedBox(
                          height: 25,
                        ),
                        TextFieldWidget(
                            hintText: "Email",
                            inputType: TextInputType.emailAddress),
                        SizedBox(
                          height: 25,
                        ),
                        TextFieldWidget(
                            hintText: "phone number",
                            inputType: TextInputType.phone),
                        SizedBox(
                          height: 25,
                        ),
                        PasswordFieldWidget(
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
                    children: [
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
                    onTap: () {},
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
