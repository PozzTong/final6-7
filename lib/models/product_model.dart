class ProductModel {
  late int code;
  late String name;
  late int qty;
  late double price;
  late double discount;
  // late double amount;
  late String image;
  ProductModel(
      {required this.code,
      required this.name,
      required this.qty,
      required this.price,
      required this.discount,
      // required this.amount,
      required this.image});
}

List<ProductModel> products = [
  ProductModel(
      code: 001,
      name: 'Hot Cappuccino',
      qty: 1,
      price: 1.45,
      discount: 0,
      image:
          "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp"),
  ProductModel(
      code: 002,
      name: 'Hot Latte',
      qty: 1,
      price: 1.45,
      discount: 0,
      image:
          "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp"),
  ProductModel(
      code: 003,
      name: 'Hot Green Tea',
      qty: 1,
      price: 1.45,
      discount: 0,
      image:
          "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp"),
  ProductModel(
      code: 004,
      name: 'Hot Chocolate',
      qty: 1,
      price: 1.45,
      discount: 0,
      image:
          "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp"),
  ProductModel(
      code: 005,
      name: 'Hot Espresso',
      qty: 1,
      price: 1.45,
      discount: 0,
      image:
          "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp"),
  ProductModel(
      code: 006,
      name: 'Hot Black',
      qty: 1,
      price: 1.45,
      discount: 0,
      image:
          "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp"),
  ProductModel(
      code: 007,
      name: 'Hot Mocha',
      qty: 1,
      price: 1.45,
      discount: 0,
      image:
          "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp"),
  ProductModel(
      code: 008,
      name: 'Hot Milk',
      qty: 1,
      price: 1.45,
      discount: 0,
      image:
          "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee.webp")
];
