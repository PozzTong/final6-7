import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:final_project_vscode/auth/home_screen.dart';
import 'package:final_project_vscode/auth/menu.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  final ithems = [
    const Icon(
      Icons.home,
      color: Colors.white,
    ),
    const Icon(Icons.menu, color: Colors.white),
    const Icon(Icons.favorite_outline, color: Colors.white),
  ];
  final screens = [const HomeScreen(), const Menu(), const HomeScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),

        onTap: (index) => setState(() => this.index = index),
        // buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(255, 27, 44, 73),
        height: 60,
        index: index,

        // items: [Icon(Icons.home), Icon(Icons.menu), Icon(Icons.favorite)]
        items: ithems,
      ),
    );
  }
}
