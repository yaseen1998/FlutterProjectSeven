import 'package:flutter/material.dart';
import 'package:project/ModalLogin/LoginInput.dart';
import 'package:project/screen/login.dart';

class signup extends StatelessWidget {
  final Function(String) onChangemail;
  final Function(String) onChangePassword;
  signup(
      {super.key, required this.onChangemail, required this.onChangePassword});

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
                'Sign up',
                style: TextStyle(fontSize: 20),
              ),
            ),
            LoginInput(
                labelText: 'Email',
                onChangedInput: (value) {
                  onChangemail(value);
                }),
            LoginInput(
                labelText: 'Password',
                onChangedInput: (value) {
                  onChangePassword(value);
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
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
