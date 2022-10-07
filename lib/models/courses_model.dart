import '../models/models.dart';

class Course {
  String imageUrl;
  String name;
  String description;
  String summery;
  String video;
  List<Question> list;
  Course({
    this.imageUrl = "null",
    this.name = "null",
    this.description = "null",
    this.summery = "null",
    this.video = "null",
    this.list = const [],
  });
}

final List<Course> courses = [
  Course(
    imageUrl:
        'https://img.freepik.com/premium-vector/creative-art-studio-interior-apartment-with-furniture-easel-with-canvas-painting-brushes-paintings-frames-bookcase-huge-window-vector-illustration-background-flat-cartoon-design_198565-1059.jpg?w=2000',
    name: 'English Arts',
    description: 'Test test',
    summery:
        "You've decided to start learning English, so let's build up your vocabulary! In this video, you'll learn some of the most important words and phrases in the English language. If you want to start learning English, this video is made for you. Our host expresses herself in simple English, with English subtitles. This video will challenge your listening comprehension skills and help you progress in your English study.",
    video: "https://youtu.be/juKd26qkNAw",
    list: beginnersEnglish(),
  ),
  Course(
    imageUrl:
        'https://img.freepik.com/premium-vector/creative-art-studio-interior-apartment-with-furniture-easel-with-canvas-painting-brushes-paintings-frames-bookcase-huge-window-vector-illustration-background-flat-cartoon-design_198565-1059.jpg?w=2000',
    name: 'Grammar',
    description: 'Test test',
    summery: "TEST TEST",
    list: grammarQuestion(),
  ),
  Course(
    imageUrl:
        'https://img.freepik.com/premium-vector/creative-art-studio-interior-apartment-with-furniture-easel-with-canvas-painting-brushes-paintings-frames-bookcase-huge-window-vector-illustration-background-flat-cartoon-design_198565-1059.jpg?w=2000',
    name: 'English Arts',
    description: 'Test test',
    summery: "TEST TEST",
    list: beginnersEnglish(),
  ),
];
