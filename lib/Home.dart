import 'package:flutter/material.dart';
import 'package:project/screen/login.dart';
import 'package:project/screen/signup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List youremail = ['test'];
  List Password = ['test'];
  String myemail = '';
  String myPassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade900),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => log_in(
                          youremail: youremail,
                          Password: Password,
                        ),
                      ));
                },
                child: const Text(
                  "Log-In Page",
                  style: TextStyle(fontFamily: "DancingScript", fontSize: 30),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade900),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signup(
                          onChangemail: (value) {
                            setState(() {
                             youremail.add(value);
                            });
                          },
                          onChangePassword: (value) {
                            setState(() {
                              Password.add(value);
                            });
                          },
                        ),
                      ));
                },
                child: const Text(
                  "Sign-Up Page",
                  style: TextStyle(fontFamily: "DancingScript", fontSize: 30),
                )),
          ]),
        ),
      ),
    );
  }
}
