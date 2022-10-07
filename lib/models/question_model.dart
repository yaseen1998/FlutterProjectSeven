class Question {
  final String questionText;
  final List<Answer> answersList;
  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer(this.answerText, this.isCorrect);
}

List<Question> beginnersEnglish() {
  List<Question> list = [];
  list.add(Question(
    "I came _____ America.",
    [
      Answer("from", true),
      Answer("at", false),
      Answer("in", false),
      Answer("on", false),
    ],
  ));
  list.add(Question(
    "I ____ cold.",
    [
      Answer("am", true),
      Answer("have", false),
      Answer("had", false),
      Answer("is", false),
    ],
  ));

  list.add(Question(
    "________ car is very old fashioned.",
    [
      Answer("Fatima’s", true),
      Answer("Fatima is", false),
      Answer("Fatimas", false),
      Answer("Fatimas", false),
    ],
  ));
  return list;
}

List<Question> grammarQuestion() {
  List<Question> list = [];
  list.add(Question(
    "Tim ______ work tomorrow.",
    [
      Answer("isn't going", false),
      Answer("isn't", false),
      Answer("isn't going to", true),
      Answer("isn't to", false),
    ],
  ));
  list.add(Question(
    "How long ______ English?",
    [
      Answer("do you learn", false),
      Answer("are you learning", false),
      Answer("have you been learning", true),
      Answer("you learn", false),
    ],
  ));
  return list;
}
