// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/registrationpage.dart';
import '../components/myboutton.dart';
import './screenx.dart';
import 'package:page_transition/page_transition.dart';

class Welcome_Screen extends StatelessWidget {
  Welcome_Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191720),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Image(
                          image: AssetImage("images/team_illustration.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Welcome to Z American English",
                      style: TextStyle(color: Colors.amber),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[850],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: MytextBoutton(
                          bogColor: Colors.white,
                          buttonName: "Register",
                          ontape: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                  child: Registration_Ppage(),
                                  type: PageTransitionType.bottomToTop,
                                ));
                          },
                          textcolor: Colors.black87),
                    ),
                    Expanded(
                      child: MytextBoutton(
                          bogColor: Colors.transparent,
                          buttonName: "Sign In",
                          ontape: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  child: Sig_In()),
                            );
                          },
                          textcolor: Colors.white),
                    ),
                  ],
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
