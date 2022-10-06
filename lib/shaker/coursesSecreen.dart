import 'package:flutter/material.dart';
import 'package:project/shaker/coustomWidgets.dart/tabs.dart';
import 'package:ionicons/ionicons.dart';

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
        backgroundColor: Color(0xff191720),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 43, 38, 61),
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "shrek",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          actions: [
            CircleAvatar(
              radius: 25,
              foregroundImage: AssetImage("images/avatar.jpg"),
            )
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 50,
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 43, 38, 61),
            title: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color.fromARGB(255, 188, 73, 255),
                tabs: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  Icon(
                    Ionicons.book_outline,
                    color: Colors.white,
                  )
                ]),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17, top: 12),
          child: TabBarView(
            children: [
              HomeTab(), //first tab
              GradesTab(courseMark: [
                "4/4",
                "3/4"
              ], courseName: [
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
        Text(
          "Grades",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.courseName.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Text(
                  "${widget.courseName[index]} :",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "${widget.courseMark[index]}",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
        ),
      ],
    );
  }
}
