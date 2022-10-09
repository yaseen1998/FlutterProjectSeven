import 'package:flutter/material.dart';
import '../models/models.dart';

class QuizScreen extends StatefulWidget {
  final List<Question> questionList;
  String grade;
  QuizScreen(this.questionList, this.grade, {super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
  bool correct = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191720),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Container(
              height: 100,
              width: 370,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 43, 38, 61),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Question ${currentQuestionIndex + 1}/${widget.questionList.length.toString()}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 43, 38, 61),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _questionWidget(),
                    const SizedBox(height: 20),
                    _answerList(),
                    const SizedBox(height: 20),
                    _nextButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Text(
          widget.questionList[currentQuestionIndex].questionText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: widget.questionList[currentQuestionIndex].answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 65,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: Colors.transparent,
          foregroundColor: Colors.white,
          backgroundColor: isSelected
              ? const Color.fromARGB(255, 188, 73, 255)
              : const Color.fromARGB(255, 79, 73, 100),
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              correct = true;
              score++;
            } else {
              correct = false;
            }
          }
          setState(() {
            selectedAnswer = answer;
          });
        },
        child: Text(answer.answerText),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    bool isAnswerSelected = false;
    if (currentQuestionIndex == widget.questionList.length - 1) {
      isLastQuestion = true;
    }
    if (selectedAnswer != null) {
      isAnswerSelected = true;
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: const Color.fromARGB(255, 188, 73, 255),
          disabledForegroundColor: Color.fromARGB(255, 94, 87, 124),
        ),
        onPressed: isAnswerSelected
            ? () {
                if (isLastQuestion) {
                  showDialog(
                    context: context,
                    builder: (_) => _showScoreDialog(),
                  );
                } else {
                  setState(() {
                    selectedAnswer = null;
                    currentQuestionIndex++;
                  });
                }
              }
            : null,
        child: const Text("Submit"),
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;
    if (score >= widget.questionList.length * 0.6) {
      isPassed = true;
    }
    String title = isPassed ? "Passed!" : "Failed..";
    return AlertDialog(
      backgroundColor: isPassed ? Colors.green.shade500 : Colors.redAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: SizedBox(
        height: 225,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "$score/${widget.questionList.length}",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.grey.shade800,
                ),
                child: const Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {
                  widget.grade = "$score/${widget.questionList.length}";
                  int count = 0;
                  Navigator.of(context).popUntil(
                    (_) => count++ >= 3,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
