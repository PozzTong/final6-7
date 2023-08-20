import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProCard extends StatefulWidget {
  const ProCard({super.key});

  @override
  State<ProCard> createState() => _ProCardState();
}

class _ProCardState extends State<ProCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child: Text('k'),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                    'https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp'))),
      ),
    );
  }
}
