import 'package:flutter/material.dart';
class MytextBoutton extends StatelessWidget {
  MytextBoutton({
    Key? key,
    required this.buttonName,
    required this.ontape,
    required this.bogColor,
    required this.textcolor,
  }) : super(key: key);
  final String buttonName;
  final Function() ontape;
  final Color bogColor;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bogColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.resolveWith((states) => Colors.black)),
        child: Text(
          "${buttonName}",
        ),
        onPressed: ontape,
      ),
    );
  }
}
