import 'package:final_project_vscode/screen/sign_in_screen.dart';
// import 'package:final_project_vscode/screen/sing_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage(''), fit: BoxFit.cover)),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'Welcome to',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'Theam Cafe',
                style: TextStyle(fontSize: 50, color: Colors.redAccent),
              ),
            ),
            CupertinoButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ));
              },
              child: const Text('GetStart'),
            )
          ],
        )),
      ),
    );
  }
}
