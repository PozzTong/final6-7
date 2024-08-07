// import 'dart:math';

// import 'package:flutter/cupertino.dart';
import 'package:final_project_vscode/auth/detail_product.dart';
import 'package:final_project_vscode/models/product_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 223, 223, 223),
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 164, 180, 194),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcG6hIFchtVsO8snzqUylQm3RjmkyfVQMhfMVVztqd&s'))),
                                product.image,
                                scale: 1.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            height: 32,
                            width: 32,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: const Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 223, 223, 223),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    width: double.infinity,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 0, bottom: 0, left: 10),
                      child: Expanded(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name, //first name
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "dis"
                                    " ${product.discount} %", //second name
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '\$',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                              Text(
                                '${product.price}',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                          Container(
                              width: 50,
                              height: 35,
                              decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailProduct(product: product),
                                      ));
                                },
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ))
                          // CupertinoButton(child: , onPressed: onPressed)
                        ],
                      ),
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
