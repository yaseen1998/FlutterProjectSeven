import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String buttonLabel;
  final Function() onTap;
  const TextButtonWidget({
    Key? key,
    required this.buttonLabel,
    required this.onTap,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 330,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          buttonLabel,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
