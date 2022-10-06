import 'package:flutter/material.dart';

class languagesBox extends StatefulWidget {
  languagesBox(
      {required this.Title, required this.imagePath, required this.subTitle});
  String Title;
  String subTitle;
  String imagePath;

  @override
  State<languagesBox> createState() => _languagesBoxState();
}

class _languagesBoxState extends State<languagesBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
        border: Border.all(color: Colors.blueGrey),
      ),
      child: Column(
        children: [
          Text(
            widget.Title,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          Text(
            widget.subTitle,
            style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w400),
          ),
          Image.asset(
            widget.imagePath,
            fit: BoxFit.fitWidth,
            height: 80,
          )
        ],
      ),
    );
  }
}

class coursesBox extends StatefulWidget {
  coursesBox(
      {required this.Title, required this.imagePath, required this.subTitle});
  String Title;
  String subTitle;
  String imagePath;

  @override
  State<coursesBox> createState() => _coursesBoxState();
}

class _coursesBoxState extends State<coursesBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, //TODO: Navigator
      child: Container(
        // padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(left: 33),
        width: 240,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
          border: Border.all(color: Colors.blueGrey),
        ),
        child: Column(
          children: [
            Container(
              width: 240,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(33),
                    topLeft: Radius.circular(33),
                  ),
                  image: DecorationImage(
                      image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
            ),
            ListTile(
              subtitle: Text(widget.subTitle),
              title: Text(widget.Title),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_add,
                    color: Colors.blueGrey[900],
                  )),
              onTap: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

class reviesBox extends StatelessWidget {
  reviesBox(
      {required this.Title, required this.imagePath, required this.subTitle});
  String Title;
  String subTitle;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(left: 33),
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
          border: Border.all(color: Colors.blueGrey),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                Title,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Text("Today")
                ],
              ),
              leading: CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage(imagePath),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subTitle,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ));
  }
}
