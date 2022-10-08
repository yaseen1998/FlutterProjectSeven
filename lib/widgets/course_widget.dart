import 'package:flutter/material.dart';
import 'package:project/models/models.dart';
import '../screens/screens.dart';

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index) {
          Course course = courses[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoScreen(course);
                    },
                  ),
                );
              },
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 43, 38, 61),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image(
                        height: 150,
                        fit: BoxFit.cover,
                        image: NetworkImage(course.imageUrl),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, bottom: 20, left: 15, right: 15),
                            child: Text(
                              course.name,
                              style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: SizedBox(
                              height: 80,
                              width: 240,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 170,
                                    child: Text(
                                      course.description,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        height: 1.2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 188, 73, 255),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
