import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:lottie/lottie.dart';

// import 'applcationscreen.dart';

class log_in extends StatefulWidget {
  log_in({super.key});

  @override
  State<log_in> createState() => _log_inState();
}

class _log_inState extends State<log_in> {
  String youremail = "moawiah@123.com";
  String Password = "1234";
  final myemail = TextEditingController();
  final myPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Lottie.network(
            //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: myemail,
                onSubmitted: (val) {
                  val = youremail;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'your email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: myPassword,
                onSubmitted: (valtow) {
                  valtow = Password;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    setState(() {
                      if (youremail == myemail.text &&
                          Password == myPassword.text) {
                        // Navigator.push(
                        //   context,
                        //   // MaterialPageRoute(
                        //   //   builder: (context) {
                        //   //     // return Application_Screen();
                        //   //   },
                        //   // ),
                        // );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Error in password or email"),
                          duration: Duration(seconds: 5),
                        ),);
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
