import 'package:flutter/material.dart';

class SignOutButtonWidget extends StatefulWidget {
  const SignOutButtonWidget({super.key});
  @override
  State<SignOutButtonWidget> createState() => _SignOutButtonWidgetState();
}

class _SignOutButtonWidgetState extends State<SignOutButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: const Color.fromARGB(255, 188, 73, 255),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: const Color.fromARGB(255, 94, 87, 124),
                content: SizedBox(
                  height: 255,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        "Are you sure you want to sign-out?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      _ActionSignOutButtons()
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Text(
          "Sign-out",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class _ActionSignOutButtons extends StatefulWidget {
  @override
  State<_ActionSignOutButtons> createState() => __ActionSignOutButtonsState();
}

class __ActionSignOutButtonsState extends State<_ActionSignOutButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 120,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.transparent,
              backgroundColor: const Color.fromARGB(255, 43, 38, 61),
            ),
            child: const Text(
              "Back",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),
        ),
        SizedBox(
          width: 120,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.transparent,
              backgroundColor: const Color.fromARGB(255, 188, 73, 255),
            ),
            onPressed: () {
              setState(() {
                Navigator.popUntil(
                  context,
                  ModalRoute.withName(Navigator.defaultRouteName),
                );
              });
            },
            child: const Text(
              "Sign-out",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
