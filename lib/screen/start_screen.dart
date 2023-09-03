import 'package:final_project_vscode/screen/sign_in_screen.dart';
// import 'package:final_project_vscode/screen/sing_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 44, 73),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://clipart-library.com/images/piqKxjE5T.png'),
                          fit: BoxFit.cover)),
                )),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
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
                      color: Colors.redAccent,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                            (route) => false);
                        // Get.to(()=>const SignIn());
                      },
                      child: const Text('GetStart'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
