import 'package:flutter/material.dart';
import 'package:project/models/models.dart';
import 'widgets.dart';

class GradeTab extends StatefulWidget {
  const GradeTab({super.key});

  @override
  State<GradeTab> createState() => _GradeTabState();
}

class _GradeTabState extends State<GradeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text(
          "Grades",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        GradesWidget(),
      ],
    );
  }
}
