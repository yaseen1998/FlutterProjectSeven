import 'package:flutter/material.dart';
import 'package:project/widgets/widgets.dart';

class ProfileWidget extends StatefulWidget {
  final String email;
  const ProfileWidget(this.email, {super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: Container(
        width: 220,
        height: 620,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 43, 38, 61),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 79, 73, 100), width: 5),
                  borderRadius: BorderRadius.circular(62.5),
                ),
                child: GestureDetector(
                  onTap: () {
                    _showOption();
                  },
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 80,
                  ),
                )),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Name: ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "E-mail: ${widget.email}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Phone Number:",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SignOutButtonWidget()
          ],
        ),
      ),
    );
  }

  _showOption() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: const Color.fromARGB(255, 94, 87, 124),
          title: const Text(
            "Make a choice:",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(
                    Icons.image,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Gallery",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // onTap: () => _imageFromGallery(context),
                ),
                ListTile(
                  leading: Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Camera",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  //  onTap: () => _imageFromcamera(context),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
