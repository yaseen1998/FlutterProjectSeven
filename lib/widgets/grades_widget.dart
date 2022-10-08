import 'package:flutter/material.dart';
import 'package:project/models/models.dart';

class GradesWidget extends StatefulWidget {
  const GradesWidget({super.key});

  @override
  State<GradesWidget> createState() => _GradesWidgetState();
}

class _GradesWidgetState extends State<GradesWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index) {
          Course course = courses[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Container(
              width: 220,
              height: 150,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 43, 38, 61),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    course.name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  _scoreWidget(course)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _scoreWidget(course) {
    bool quizTaken = false;
    if (course.grade != "null") {
      quizTaken = true;
    }
    return Text(
      quizTaken ? course.grade : "0/${course.list.length.toString()}",
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
