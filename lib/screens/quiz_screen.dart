import 'package:flutter/material.dart';
import '../models/models.dart';

class QuizScreen extends StatefulWidget {
  final List<Question> questionList;
  const QuizScreen(this.questionList, {super.key});
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          Text(
            "Question ${currentQuestionIndex + 1}/${widget.questionList.length.toString()}",
            style: const TextStyle(
              fontFamily: 'Cairo',
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _questionWidget(),
                const SizedBox(height: 50),
                _answerList(),
                _nextButton(),
              ],
            ),
          )
        ],
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
          style: TextStyle(
            fontFamily: 'Cairo',
            color: Colors.white.withOpacity(0.9),
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
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadowColor: Colors.transparent,
          side: BorderSide(
            width: 2,
            color: isSelected ? Colors.deepPurpleAccent : Colors.grey.shade300,
          ),
          foregroundColor:
              isSelected ? Colors.deepPurpleAccent : Colors.grey.shade400,
          backgroundColor: Colors.transparent,
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
        child: Text(
          answer.answerText,
          style: TextStyle(
              fontFamily: 'Cairo', fontSize: 20, fontWeight: FontWeight.w500),
        ),
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
              borderRadius: BorderRadius.circular(15),
            ),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.deepPurpleAccent,
            disabledBackgroundColor: Colors.black54),
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
        child: const Text(
          "Submit",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
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
      backgroundColor: isPassed
          ? Color.fromARGB(255, 41, 143, 41)
          : Color.fromARGB(255, 143, 41, 41),
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
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "$score/${widget.questionList.length}",
                  style: const TextStyle(
                    fontFamily: 'Cairo',
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
                  backgroundColor: Color(0xff191720),
                ),
                child: Text(
                  "Home",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      color:
                          isPassed ? Colors.green.shade400 : Colors.redAccent,
                      fontSize: 15),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, "homeScreen");
                  setState(() {
                    currentQuestionIndex = 0;
                    score = 0;
                    selectedAnswer = null;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
