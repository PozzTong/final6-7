import 'package:badges/badges.dart' as badges;

import 'package:final_project_vscode/auth/widget/build_card.dart';
import 'package:final_project_vscode/auth/widget/list_items.dart';
import 'package:final_project_vscode/models/product_model.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: AppBar(
          title: const Column(
            children: [
              Text(
                'Cavosh',
                style: TextStyle(fontSize: 25, color: Colors.red),
              ),
              Row(
                children: [
                  Text(
                    'Good Morning, User',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 27, 44, 73),
          elevation: 25,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
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
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.blue,
                padding: const EdgeInsets.all(5),
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(color: Colors.white, width: 1),
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
      body: InkWell(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'New In',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 170,
                width: double.infinity,
                color: const Color.fromARGB(255, 218, 217, 217),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                          products.length,
                          (index) => BuildCard(
                                product: products[index],
                              ))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Frequentely Ordered',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.vertical,
                childAspectRatio: 19 / 5,
                children: List.generate(
                    products.length,
                    (index) => ListItems(
                          product: products[index],
                        )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
