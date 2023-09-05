import 'package:cloud_firestore/cloud_firestore.dart';

class ProModel {
  late int code;
  late String name;
  late int qty;
  late double price;
  late double discount;
  // late String image;
  ProModel(
      {required this.code,
      required this.name,
      required this.qty,
      required this.price,
      required this.discount});
  ProModel.fromDocument(DocumentSnapshot doc)
      : code = doc['code'],
        name = doc['name'],
        qty = doc['qty'],
        price = doc['price'];
}
