import 'package:final_project_vscode/widget/prod_card.dart';
// import 'package:final_project_vscode/widget/product_card.dart';
import 'package:flutter/material.dart';

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
            children: List.generate(7, (index) => const ProCard()),
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
