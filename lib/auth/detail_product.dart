

import 'package:final_project_vscode/models/product_model.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct({super.key, required this.product});
  ProductModel product;

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              // padding: const EdgeInsets.all(20.0),
              child: Image(
                  // color: Colors.grey,
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.product.image))),
          Positioned(
              top: 50,
              right: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                ],
              )),
          Positioned(
            top: 300,
            left: 30,
            child: Container(
              height: 120,
              // color: Colors.white,
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: const Offset(4, 4))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  quantityIcon(
                      onTap: () {}, color: Colors.transparent, icon: Icons.add),
                  Text(
                    itemCount.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  quantityIcon(
                      onTap: () {},
                      color: Colors.transparent,
                      icon: Icons.remove),
                ],
              ),
            ),
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(top: size.height * 0.55),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: size.height * .55,
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 30),
                            ),
                            const SizedBox(height: 10),
                            // priceWidget()
                            Text(
                              '${widget.product.price} \$',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, bottom: 4),
                      child: TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              gapPadding: 4,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Write a note...'),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Total Price'), Text('\$')],
                            )),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 27, 44, 73),
                                borderRadius: BorderRadius.circular(15)),
                            child:  Center(
                                child: InkWell(
                                  onTap: (){},
                              child: const Text(
                                'Add to Card',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget quantityIcon({
    required VoidCallback onTap,
    required Color color,
    required IconData icon,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
