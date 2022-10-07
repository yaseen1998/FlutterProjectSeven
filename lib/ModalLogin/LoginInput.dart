import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  LoginInput({Key? key, required this.labelText, required this.onChangedInput})
      : super(key: key);
  final String labelText;
  Function(String) onChangedInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        onChanged: onChangedInput,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }
}


