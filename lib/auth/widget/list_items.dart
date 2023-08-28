import 'package:final_project_vscode/models/product_model.dart';
import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  ListItems({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 253, 253),
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
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(product.image))),
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(product.name),
                        subtitle: Text("dis" " ${product.discount} %"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 0, left: 15),
                        child: Row(
                          children: [
                            Text(
                              '\$ ',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              '${product.price}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
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
                            topLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4))),
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
