import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTab = 0;
  List<Widget> activeTabWidget = [const HomeTab(), const GradeTab()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: activeTab,
      length: 3,
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: const Color(0xff191720),
          bottomNavigationBar: CurvedNavigationBar(
            index: activeTab,
            height: 50,
            color: const Color.fromARGB(255, 43, 38, 61),
            backgroundColor: const Color(0xff191720),
            animationDuration: const Duration(milliseconds: 200),
            items: const [
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
              )
            ],
            onTap: (value) {
              if (value == 0) {
                setState(() {
                  activeTab = 0;
                });
              } else if (value == 1) {
                setState(() {
                  activeTab = 1;
                });
              } else if (value == 2) {
                setState(() {
                  activeTab = 2;
                });
              }
            },
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 12),
            child: activeTabWidget[activeTab],
          ),
        ),
      ),
    );
  }
}
