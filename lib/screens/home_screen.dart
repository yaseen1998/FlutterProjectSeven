import 'package:flutter/material.dart';
import 'package:project/screens/screens.dart';
import 'package:project/widgets/informationTab.dart';
import '../widgets/widgets.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> ActiveTabWidget = [const HomeTab(), HomeTab(), Information()];
  int ActiveTab = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: ActiveTab,
      length: 3,
      child: Scaffold(
          backgroundColor: const Color(0xff191720),
          bottomNavigationBar: CurvedNavigationBar(
            index: ActiveTab,
            color: const Color.fromARGB(255, 43, 38, 61),
            height: 50,
            backgroundColor: const Color(0xff191720),
            // buttonBackgroundColor: const Color(0xff191720),
            animationDuration: Duration(milliseconds: 200),
            items: [
              Icon(
                Icons.home,
                color: Colors.white,
                size: 25,
              ),
              Icon(
                Icons.beenhere,
                color: Colors.white,
                size: 25,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 25,
              ),
            ],
            onTap: (value) {
              if (value == 0) {
                setState(
                  () {
                    ActiveTab = 0;
                  },
                );
              } else if (value == 1) {
                setState(
                  () {
                    ActiveTab = 1;
                  },
                );
              } else if (value == 2) {
                setState(
                  () {
                    ActiveTab = 2;
                  },
                );
              }
            },
          ),
          body: ActiveTabWidget[ActiveTab] //first tab

          ),
    );
  }
}

// GradesTab(courseMark: [
// "4/4",
// "3/4"
// ], courseName: [
// "English Words",
// "English numbers",
// ]), //second tab
// class GradesTab extends StatefulWidget {
//   GradesTab({required this.courseName, required this.courseMark});
//   List courseName;
//   List courseMark;
//   @override
//   State<GradesTab> createState() => _GradesTabState();
// }

// class _GradesTabState extends State<GradesTab> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           "Grades",
//           style: TextStyle(
//               fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
//         ),
//         ListView.separated(
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           itemCount: widget.courseName.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Row(
//               children: [
//                 Text(
//                   "${widget.courseName[index]} :",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//                 Text(
//                   "${widget.courseMark[index]}",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 )
//               ],
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             );
//           },
//           separatorBuilder: (context, index) {
//             return SizedBox(
//               height: 10,
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
