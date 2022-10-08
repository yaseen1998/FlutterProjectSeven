import 'package:flutter/material.dart';

class SignInFieldWidget extends StatelessWidget {
  final TextInputType inputType;
  Function(String) onChangedInput;
  SignInFieldWidget({
    super.key,
    required this.onChangedInput,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextField(
        onChanged: onChangedInput,
        style: const TextStyle(color: Colors.white),
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          hintText: "E-mail",
          hintStyle: const TextStyle(color: Colors.grey, fontFamily: 'Cairo'),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
