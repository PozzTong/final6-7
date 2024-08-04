import 'package:final_project_vscode/auth/bottom_navbar.dart';
import 'package:final_project_vscode/screen/sing_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:final_project_vscode/auth/home_screen.dart';
// import 'package:final_project_vscode/auth/menu.dart';
// import 'package:final_project_vscode/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: AppBar(
          title: const Text("Let's get you Signd In!"),
          backgroundColor: const Color.fromARGB(255, 27, 44, 73),
          elevation: 25,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
        ),
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // top: MediaQuery.of(context).size.height, right: 35, left: 35),
              child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      prefixIcon: Icon(Icons.mail),
                      hintText: 'E-mail')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      prefixIcon: Icon(Icons.key),
                      hintText: 'Password')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Get.to(() => const SignUp());
                    },
                    child: const Text(
                      "Create New Account",
                      style: TextStyle(color: Colors.blueAccent),
                    )),
                TextButton(
                    onPressed: () {Get.to(()=> const BottomNavBar());},
                    child: const Text(
                      'Forgot Password ?',
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ),
            CupertinoButton(
                color: const Color.fromARGB(255, 27, 44, 73),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: const Text('Sign In'),
                onPressed: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                    if (credential != null) {
                      Get.to(() => const BottomNavBar());
                    }
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }
                })
          ],
        ),
      ),
    );
  }
}
