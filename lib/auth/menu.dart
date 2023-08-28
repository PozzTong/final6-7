// import 'package:final_project_vscode/widget/prod_card.dart';
import 'package:final_project_vscode/widget/product_card.dart';
// import 'package:final_project_vscode/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: AppBar(
          title: const Text('Menu'),
          backgroundColor: const Color.fromARGB(255, 27, 44, 73),
          elevation: 25,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
            // topLeft: Radius.circular(25),
            // topRight: Radius.circular(25)
          )),
          actions: [
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: -10, end: -12),
              showBadge: true,
              ignorePointer: false,
              onTap: () {},
              badgeContent: const Text(
                '2',
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
              // badgeAnimation: badges.BadgeAnimation.rotation(
              //   animationDuration: Duration(seconds: 1),
              //   colorChangeAnimationDuration: Duration(seconds: 1),
              //   loopAnimation: false,
              //   curve: Curves.fastOutSlowIn,
              //   colorChangeAnimationCurve: Curves.easeInCubic,
              // ),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.blue,
                padding: const EdgeInsets.all(5),
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(color: Colors.white, width: 1),
                // borderGradient: const badges.BadgeGradient.linear(
                //     colors: [Colors.red, Colors.black]),
                badgeGradient: const badges.BadgeGradient.linear(
                  colors: [Colors.white, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                elevation: 0,
              ),
              child: const Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: const Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: GridView.count(
            // mainAxisSpacing: 2,
            // crossAxisSpacing: 2,
            crossAxisCount: 2,
            childAspectRatio: 10 / 14,
            children: List.generate(7, (index) => const ProductCard()),
          ))
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      //   BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
      //   BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search')
      // ]),
    );
  }
}
