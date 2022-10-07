import 'package:flutter/material.dart';

class PasswordLogin extends StatelessWidget {
  final bool isPasswordVisible;
  Function(String) onChangedInput;

  final Function() onTap;
   PasswordLogin(
      {super.key, required this.isPasswordVisible,    required this.onChangedInput,
required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        obscureText: isPasswordVisible,
        onChanged: onChangedInput,

        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: onTap,
              icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off),
              color: Colors.grey,
            ),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          hintStyle: const TextStyle(color: Colors.white),
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
