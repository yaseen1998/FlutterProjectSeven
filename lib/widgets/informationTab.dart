import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../screens/registration_screen.dart';

class Information extends StatefulWidget {
  final String email;
  const Information({super.key, required this.email});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  // late File myimage;
  // final imagepicker = ImagePicker();
  late File imageFile;

  // Uploadeimage() async {
  //   var pickedImage = await imagepicker.pickImage(source: ImageSource.camera);
  //  if(pickedImage!=null){
  //    myimage = File(pickedImage.path);
  //  }
  // }

  _showoption(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Make a choice"),
          content: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text("Gallery"),
                  // onTap: () => _imageFromGallery(context),
                ),
                ListTile(
                  leading: Icon(Icons.camera),
                  title: Text("camera"),
                  //  onTap: () => _imageFromcamera(context),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  // Future _imageFromGallery(BuildContext context) async {
  //   var image = await ImagePicker(ImageSource.gallery);

  //   if (pickedimage != null) {
  //     myimageFile = File(pickedimage.path);
  //   } else {}
  // }

  // Future _imageFromcamera(BuildContext context) async {
  //   var pickedimage = imagepicker.pickImage(source: ImageSource.camera);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _showoption(context),
      // ),
      backgroundColor: const Color(0xff191720),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Account Information",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              // child: myimageFile=!null
              // ?Image.file(myimageFile,width: 100,height: 100,):
              radius: 70,
            ),
          ),
          ElevatedButton(
              onPressed: () => _showoption(context), child: Text("ublode")),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  // color: Colors.white,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email ${widget.email}",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
