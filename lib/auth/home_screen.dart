import 'package:badges/badges.dart' as badges;
// import 'package:final_project_vscode/widget/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    // Text('Cavosh Cafe Legicka 20, Wroctaw')
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
        body: SafeArea(
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
                height: 160,
                width: double.infinity,
                color: Color.fromARGB(255, 218, 217, 217),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                      Row(children: List.generate(7, (index) => buildCard())),
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
                // mainAxisSpacing: 2,
                // crossAxisSpacing: 2,

                crossAxisCount: 1,
                scrollDirection: Axis.vertical,
                childAspectRatio: 19 / 5,
                children: List.generate(10, (index) => listItem()),
              ))
              // listItem()
            ],
          ),
        ));
  }

  Widget buildCard() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp'))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [Text('data'), Text('1'), Text('data')],
                  ),
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                        width: 50,
                        height: 38,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listItem() {
    return Card(
      elevation: 1,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 253, 253),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp'))),
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Column(
                    children: [
                      ListTile(
                        title: Text('Caramel Ma'),
                        subtitle: Text('la'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 0, left: 15),
                        child: Row(
                          children: [Text('A'), Text('t')],
                        ),
                      )
                    ],
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: 50,
                    height: 38,
                    // color: Colors.grey,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
