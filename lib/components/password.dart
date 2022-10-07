// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class My_Password_Felod extends StatelessWidget {
  My_Password_Felod(
      {required this.ispasswordvisible, required this.ontap});
  final bool ispasswordvisible;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        obscureText: ispasswordvisible,
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: ontap,
              icon: Icon(
                  ispasswordvisible ? Icons.visibility : Icons.visibility_off),
              color: Colors.grey,
            ),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: "password",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
