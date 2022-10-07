import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../widgets/widgets.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class coursesScreen extends StatefulWidget {
  const coursesScreen({super.key});

  @override
  State<coursesScreen> createState() => _coursesScreenState();
}

class _coursesScreenState extends State<coursesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff191720),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 43, 38, 61),
          title: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "shrek",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          actions: const [
            CircleAvatar(
              radius: 25,
              foregroundImage: AssetImage("images/avatar.jpg"),
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          animationDuration: Duration(milliseconds: 200),
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Ionicons.book_outline,
              color: Colors.white,
            ),
          ],
          color: Color.fromARGB(255, 57, 51, 82),
          height: 50,
          onTap: (index) {
            print(index);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17, top: 12),
          child: TabBarView(
            children: [
              const HomeTab(), //first tab
              GradesTab(courseMark: const [
                "4/4",
                "3/4"
              ], courseName: const [
                "English Words",
                "English numbers",
              ]), //second tab
            ],
          ),
        ),
      ),
    );
  }
}

class GradesTab extends StatefulWidget {
  GradesTab({required this.courseName, required this.courseMark});
  List courseName;
  List courseMark;
  @override
  State<GradesTab> createState() => _GradesTabState();
}

class _GradesTabState extends State<GradesTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Grades",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.courseName.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Text(
                  "${widget.courseName[index]} :",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "${widget.courseMark[index]}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
        ),
      ],
    );
  }
}
