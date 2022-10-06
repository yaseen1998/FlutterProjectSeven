import 'package:flutter/material.dart';
import 'package:project/shaker/coustomWidgets.dart/customBox.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          "Top Languages ",
          style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            languagesBox(
                Title: "English",
                imagePath: "images/english Speakers.jpg",
                subTitle: "1.35 billion"),
            SizedBox(
              width: 17,
            ),
            languagesBox(
                Title: "Mandarin ",
                imagePath: "images/mandarin Speakers.jpg",
                subTitle: "1,117 billion"),
          ],
        ),
        SizedBox(
          height: 17,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            languagesBox(
                Title: "Hindi",
                imagePath: "images/hindi Speakers.jpg",
                subTitle: "615 million"),
            SizedBox(
              width: 17,
            ),
            languagesBox(
                Title: "Spanish",
                imagePath: "images/spanish Speakers.jpg",
                subTitle: "534 million"),
          ],
        ),
        Divider(
          height: 20,
          color: Colors.grey,
          thickness: 1,
        ),
        Text(
          "Top Corses",
          style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.w500),
        ),
        Divider(
          height: 20,
          color: Colors.transparent,
        ),
        coursesTab(),
        Divider(
          height: 20,
          color: Colors.grey,
          thickness: 1,
        ),
        Text(
          "Reviews",
          style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.w500),
        ),
        Divider(
          height: 20,
          color: Colors.transparent,
        ),
        Divider(
          height: 20,
          color: Colors.transparent,
        ),
        reviewsTab()
      ],
    );
  }
}

class coursesTab extends StatefulWidget {
  const coursesTab({super.key});

  @override
  State<coursesTab> createState() => _coursesTabState();
}

class _coursesTabState extends State<coursesTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          coursesBox(
              Title: "English letters",
              imagePath: "images/letters.jpg",
              subTitle: "givin by ahmad"),
          coursesBox(
              Title: "English numbers",
              imagePath: "images/numbers.jpg",
              subTitle: "givin by ahmad"),
          coursesBox(
              Title: "English Words",
              imagePath: "images/Words.jpg",
              subTitle: "givin by ahmad"),
          coursesBox(
              Title: "English speaking",
              imagePath: "images/speaking.jpg",
              subTitle: "givin by ahmad"),
        ],
      ),
    );
  }
}

class reviewsTab extends StatelessWidget {
  const reviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          reviesBox(
            Title: "Moaweah Dwair",
            imagePath: "images/man.jpg",
            subTitle:
                "Easy to use and works!! Keeps my brain active 👍 slight competitive element with the 'leagues' & 'challenges'.",
          ),
          reviesBox(
            Title: "Ebaa",
            imagePath: "images/ebaa.png",
            subTitle:
                "The app is great! It really does make learning more fun and easy. However, after the last update most male voices have no sound for unknown reasons.",
          ),
          reviesBox(
            Title: "Rawan",
            imagePath: "images/woman.jpg",
            subTitle:
                "Generally very good, and considerably improved from a few years ago. Ads in the free version long and annoying. Sometimes the difficulty level of an exercise seems arbitrary.",
          ),
          reviesBox(
            Title: "yasseen",
            imagePath: "images/man.jpg",
            subTitle:
                "Really fun, easy and effective app in general. However, there are annoying bugs in the app like the mic. It doesn't recognize most things you say unless you're shouting really slowly. ",
          ),
          reviesBox(
            Title: "Shaker",
            imagePath: "images/man.jpg",
            subTitle:
                "I've completed my first month learning Italian, I'm shocked at my progress. I've never picked up languages, I did formal classes in hs and college and dropped out or got poor grades.",
          ),
        ],
      ),
    );
  }
}
