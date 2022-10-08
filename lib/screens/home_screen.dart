import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  final String email;
  const HomeScreen(this.email, {super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> activeTabWidget = [
      const HomeTab(),
      const GradeTab(),
      ProfileTab(widget.email),
    ];
    return DefaultTabController(
      initialIndex: activeTab,
      length: 3,
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: const Color(0xff191720),
          bottomNavigationBar: _navBarWidget(),
          body: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 12),
            child: activeTabWidget[activeTab],
          ),
        ),
      ),
    );
  }

  _navBarWidget() {
    return CurvedNavigationBar(
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
    );
  }
}
