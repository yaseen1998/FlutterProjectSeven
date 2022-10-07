import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/ModalLogin/LoginInput.dart';

// import 'package:lottie/lottie.dart';

// import 'applcationscreen.dart';

class log_in extends StatefulWidget {
  final List youremail;
  final List Password;
  log_in({Key? key, required this.youremail, required this.Password})
      : super(key: key);
  
  @override
  State<log_in> createState() => _log_inState();
}

class _log_inState extends State<log_in> {
  String myemail = '';
  String myPassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 20),
              ),
            ),
            LoginInput( labelText: 'Email', onChangedInput: (value) {
              setState(() {
                myemail = value;
              
              });
            }),
            LoginInput( labelText: 'Password', onChangedInput: (value) {
              setState(() {
                myPassword = value;
              });
            }),
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
                      if (widget.youremail.contains(myemail)  && widget.Password.contains(myPassword)) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Login Successfull"),
                          duration: Duration(seconds: 5),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Error in password or email"),
                            duration: Duration(seconds: 5),
                          ),
                        );
                      
                    }
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
