import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('L'),
        backgroundColor: Colors.orangeAccent,
        elevation: 25,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.menu),
        // ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          side: BorderSide(
              width: 4, color: Colors.redAccent, style: BorderStyle.none),
        ),
      ),
    );
  }
}
