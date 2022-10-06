import 'package:flutter/material.dart';
import 'package:project/shaker/coustomWidgets.dart/tabs.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              ),
              Text(
                "shrek",
                style: TextStyle(fontSize: 25, color: Colors.black),
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
            backgroundColor: Colors.white,
            title: TabBar(indicatorSize: TabBarIndicatorSize.label, tabs: [
              Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/2374/2374322.png"),
                width: 26,
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
              fontSize: 20,
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.w500),
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
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  "${widget.courseMark[index]}",
                  style: TextStyle(fontSize: 18, color: Colors.black),
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
