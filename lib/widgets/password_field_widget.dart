import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatelessWidget {
  final bool isPasswordVisible;
  Function(String) onChangedInput;

  final Function() onTap;
  PasswordFieldWidget({
    super.key,
    required this.isPasswordVisible,
    required this.onChangedInput,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextField(
        obscureText: isPasswordVisible,
        onChanged: onChangedInput,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Cairo',
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: onTap,
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              color: Colors.grey,
            ),
          ),
          hintText: "Password",
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontFamily: 'Cairo',
          ),
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
