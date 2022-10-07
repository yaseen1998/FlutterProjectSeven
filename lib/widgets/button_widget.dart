import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String buttonLabel;
  final Function() onTap;
  const TextButtonWidget({
    Key? key,
    required this.buttonLabel,
    required this.onTap,
    required this.backgroundColor,
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
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black,
          ),
        ),
        onPressed: onTap,
        child: Text(buttonLabel),
      ),
    );
  }
}
