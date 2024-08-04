import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project_vscode/auth/detail_product.dart';
import 'package:final_project_vscode/models/product_model.dart';
// import 'package:final_project_vscode/widget/product_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuildCard extends StatefulWidget {
  BuildCard({super.key, required this.product});
  ProductModel product;

  @override
  State<BuildCard> createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  List<String> docIds = [];

  getDocId() async {
    await FirebaseFirestore.instance.collection('promodel').get().then((value) {
      value.docs.forEach((element) {
        setState(() {
          docIds.add(element.reference.id);
        });
      });
    });
  }

  CollectionReference usersdata =
      FirebaseFirestore.instance.collection('promodel');

  @override
  void initState() {
  
    super.initState();
    getDocId();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 200,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Expanded(
                child: Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.product.image))),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            '\$ ',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text('${widget.product.price}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16))
                        ],
                      ),
                     
                      Container(
                          width: 45,
                          height: 32,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                        product: widget.product),
                                  ));
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
