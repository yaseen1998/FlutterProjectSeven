import '../models/models.dart';

class Course {
  String imageUrl;
  String name;
  String description;
  String summery;
  String video;
  String grade;
  List<Question> list;
  Course({
    this.imageUrl = "null",
    this.name = "null",
    this.description = "null",
    this.summery = "null",
    this.video = "null",
    this.grade = "null",
    this.list = const [],
  });
}

final List<Course> courses = [
  Course(
    imageUrl: "https://i.ytimg.com/vi_webp/juKd26qkNAw/mqdefault.webp",
    name: "Learn English in 30 Minutes",
    description: "Get started with the English language in only 30 minutes!",
    summery:
        "You've decided to start learning English, so let's build up your vocabulary! In this video, you'll learn some of the most important words and phrases in the English language. If you want to start learning English, this video is made for you. Our host expresses herself in simple English, with English subtitles. This video will challenge your listening comprehension skills and help you progress in your English study.",
    video: "https://youtu.be/juKd26qkNAw",
    grade: "null",
    list: beginnersEnglish(),
  ),
  Course(
    imageUrl: "https://i.ytimg.com/vi/SLo1IAQ_U2k/mqdefault.jpg",
    name: "Basic Vocabulary",
    description: "Learn 20 brand new English words to use in everyday life!",
    summery:
        "So after you’ve learned the new words and phrases, stick around and review what you learned in previous lessons. Reviewing is one of the most important parts of learning a language! This is THE place to start if you want to learn English, and improve both your listening and speaking skills.",
    video: "https://youtu.be/SLo1IAQ_U2k",
    grade: "null",
    list: grammarQuestion(),
  ),
  Course(
    imageUrl: "https://i.ytimg.com/vi/VBl9mQr3kdk/mqdefault.jpg",
    name: "Basic English Grammar",
    description: "Learn about the Present perfect and ever/never grammar rules in this quick course.",
    summery:
        "In this video, Alisha answers 3 questions.\n- I am bit confused about using never and ever. For example: \"I never seen\" and \"I ever seen\"\n- What is the difference between photograph and photography. How should I use these words? \n- If you can would you please explain me how can we use \"take out, take off, take over, over take\" with examples.",
    video: "https://youtu.be/VBl9mQr3kdk",
    grade: "null",
    list: beginnersEnglish(),
  ),
];
