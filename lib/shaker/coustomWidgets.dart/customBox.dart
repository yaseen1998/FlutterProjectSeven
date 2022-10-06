import 'package:flutter/material.dart';

class languagesBox extends StatefulWidget {
  languagesBox(
      {required this.Title,
      required this.imagePath1,
      required this.imagePath2,
      required this.imagePath3,
      required this.subTitle});
  String Title;
  String subTitle;
  String imagePath1;
  String imagePath2;
  String imagePath3;

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
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff191720),
              Color.fromARGB(255, 80, 6, 122),
              Color.fromARGB(255, 87, 23, 117)
            ]),
        // color: Color.fromARGB(255, 123, 61, 215),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 7,
              color: Color.fromARGB(255, 106, 7, 163))
        ],
        borderRadius: BorderRadius.circular(33),
        // border: Border.all(color: Colors.blueGrey),
      ),
      child: Column(
        children: [
          Text(
            widget.Title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget.subTitle,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                foregroundImage: AssetImage(widget.imagePath1),
              ),
              CircleAvatar(
                foregroundImage: AssetImage(widget.imagePath2),
              ),
              CircleAvatar(
                foregroundImage: AssetImage(widget.imagePath3),
              ),
            ],
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
        margin: EdgeInsets.only(left: 33, bottom: 10),
        width: 240,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xff191720),
          borderRadius: BorderRadius.circular(33),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 7,
                color: Color.fromARGB(255, 106, 7, 163))
          ],
          // border: Border.all(color: Colors.blueGrey),
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
              subtitle: Text(
                widget.subTitle,
                style: TextStyle(color: Colors.white),
              ),
              title: Text(
                widget.Title,
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_add,
                    color: Colors.white,
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
        margin: EdgeInsets.only(left: 33, top: 12, bottom: 12),
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xff191720),
          borderRadius: BorderRadius.circular(33),
          // border: Border.all(color: Colors.blueGrey),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 7,
                color: Color.fromARGB(255, 106, 7, 163))
          ],
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                Title,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
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
                  Text(
                    "Today",
                    style: TextStyle(color: Colors.white),
                  )
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
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ));
  }
}
