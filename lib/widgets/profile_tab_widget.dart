import 'package:flutter/material.dart';
import 'widgets.dart';

class ProfileTab extends StatefulWidget {
  final String email;
  const ProfileTab(this.email, {super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          "Profile",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        ProfileWidget(widget.email),
      ],
    );
  }
}
