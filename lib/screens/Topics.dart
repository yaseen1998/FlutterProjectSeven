import 'dart:ffi';

import 'package:flutter/material.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191720),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 10, 61),
        title: Text(
          "Topics",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        // height: 400,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                textAlign: TextAlign.center,
                "You can study the courses in the order the letters are written on them or study in the order you prefer",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TopicsIcons(ImagePath: [
              "https://cdn-icons-png.flaticon.com/512/5511/5511398.png",
              "https://cdn-icons-png.flaticon.com/512/5238/5238411.png",
              "https://cdn-icons-png.flaticon.com/512/4928/4928937.png",
              "https://cdn-icons-png.flaticon.com/512/5526/5526301.png"
            ], Name: [
              "Grammer",
              "Speaking",
              "Writing",
              "Reading"
            ])
          ],
        ),
      ),
    );
  }
}

class TopicsIcons extends StatelessWidget {
  TopicsIcons({required this.ImagePath, required this.Name});
  List Name;
  List ImagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 42, 10, 61),
        borderRadius: BorderRadius.all(Radius.circular(22)),
        border: Border.all(color: Colors.white),
      ),
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemCount: Name.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Stack(children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 67,
                ),
                Positioned(
                  top: 1,
                  left: 1,
                  child: CircleAvatar(
                    radius: 66,
                    foregroundImage: NetworkImage(ImagePath[index]),
                  ),
                ),
              ]),
              Text(
                Name[index],
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          );
        },
      ),
    );
  }
}
