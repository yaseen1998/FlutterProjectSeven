import 'package:flutter/material.dart';
import 'package:project/components/myboutton.dart';
import 'package:project/components/mytextfield.dart';
import 'package:project/components/password.dart';
import 'package:project/screen/screenx.dart';

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
                  return Welcome_Screen();
                },
              ),
            );
          },
          icon: Image(
            image: AssetImage("images/backarrowicomn.png"),
          ),
        ),
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
                        MytextField(
                            hinttext: "Name", inputType: TextInputType.name),
                        SizedBox(
                          height: 25,
                        ),
                        MytextField(
                            hinttext: "Email",
                            inputType: TextInputType.emailAddress),
                        SizedBox(
                          height: 25,
                        ),
                        MytextField(
                            hinttext: "phone number",
                            inputType: TextInputType.phone),
                        SizedBox(
                          height: 25,
                        ),
                        My_Password_Felod(
                          ispasswordvisible: passwordvisible,
                          ontap: () {
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
                  MytextBoutton(
                      buttonName: "registration ",
                      ontape: () {},
                      bogColor: Colors.white,
                      textcolor: Colors.white),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
