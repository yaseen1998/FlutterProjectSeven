import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff191720),
        bottomNavigationBar: SizedBox(
          height: 60,
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromARGB(255, 43, 38, 61),
            title: const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color.fromARGB(255, 188, 73, 255),
              tabs: [
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
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.only(left: 17, right: 17, top: 12),
          child: TabBarView(
            children: [
              HomeTab(),
              GradeTab(),
            ],
          ),
        ),
      ),
    );
  }
}

