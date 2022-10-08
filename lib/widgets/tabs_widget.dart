import 'package:flutter/material.dart';
import 'package:project/widgets/review_widget.dart';
import 'widgets.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Text(
            "Popular Courses",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        ),
        CoursesWidget(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Text(
            "Reviews",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        ),
        ReviewsWidget(),
      ],
    );
  }
}
