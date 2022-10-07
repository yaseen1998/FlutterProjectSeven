import 'dart:ui';

import 'package:flutter/material.dart';

class MytextField extends StatelessWidget {
  const MytextField({
    Key? key,
    required this.hinttext,
    required this.inputType,
  }) : super(key: key);
  final String hinttext;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        style: TextStyle(color: Colors.white),
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: hinttext,
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
