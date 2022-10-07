import 'package:flutter/material.dart';
import 'package:project/screens/quiz_screen.dart';
import '../models/models.dart';

class SelectScreen extends StatefulWidget {
  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: 500,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return QuizScreen(beginnersEnglish());
                      },
                    ),
                  );
                },
                child: const Text("Beginners English"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return QuizScreen(grammarQuestion());
                      },
                    ),
                  );
                },
                child: const Text("Beginners Grammar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
