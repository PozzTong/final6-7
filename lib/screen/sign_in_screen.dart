import 'package:final_project_vscode/auth/menu.dart';
// import 'package:final_project_vscode/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
              width: double.infinity,
              child: Text(
                "Let's get you signd in!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    backgroundColor: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // top: MediaQuery.of(context).size.height, right: 35, left: 35),
              child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                      hintText: 'E-mail')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key),
                      hintText: 'Password')),
            ),
            CupertinoButton(
                child: const Text('Sign In'),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Menu(),
                      ),
                      (route) => false);
                })
          ],
        ),
      ),
    );
  }
}
