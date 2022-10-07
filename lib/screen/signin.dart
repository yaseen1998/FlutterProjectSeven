// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project/screen/registrationpage.dart';

import 'package:project/screen/screenx.dart';

import '../components/myboutton.dart';
import '../components/mytextfield.dart';
import '../components/password.dart';

class Sig_In extends StatefulWidget {
  const Sig_In({super.key});

  @override
  State<Sig_In> createState() => _Sig_InState();
}

class _Sig_InState extends State<Sig_In> {
  bool ispasswordvisible = true;
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
              PageTransition(
                  type: PageTransitionType.bottomToTop,
                  child: Welcome_Screen()),
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
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Center(
                          //   child: AnimatedTextKit(
                          //     animatedTexts: [
                          //       TyperAnimatedText('welcome back again'),
                          //       TyperAnimatedText('You missed a lot'),
                          //     ],
                          //   ),
                          // ),
                          Text(
                            " TyperAnimatedText('welcome back again'),",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJGtX1zNjvck3H1MHazjX-YOdDu0BTu5ikoA&usqp=CAU"),
                          )),
                          SizedBox(
                            height: 40,
                          ),
                          MytextField(
                            hinttext: "Your personal email",
                            inputType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          My_Password_Felod(
                            ispasswordvisible: ispasswordvisible,
                            ontap: () {
                              setState(() {
                                ispasswordvisible = !ispasswordvisible;
                              });
                            },
                          ),
                          SizedBox(
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Registration_Ppage();
                              },
                            ));
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MytextBoutton(
                        buttonName: "sign in",
                        ontape: () {},
                        bogColor: Colors.black87,
                        textcolor: Colors.white),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MytextField extends StatelessWidget {
//   const MytextField({
//     Key? key,
//     required this.hinttext,
//     required this.inputType,
//   }) : super(key: key);
//   final String hinttext;
//   final TextInputType inputType;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: TextField(
//         keyboardType: inputType,
//         textInputAction: TextInputAction.next,
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.all(10),
//           hintText: hinttext,
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.grey, width: 1),
//             borderRadius: BorderRadius.circular(18),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.white, width: 1),
//             borderRadius: BorderRadius.circular(18),
//           ),
//         ),
//       ),
//     );
//   }
// }
