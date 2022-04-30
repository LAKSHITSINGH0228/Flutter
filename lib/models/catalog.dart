class CatalogModel {
  static final items = [
  Item(id: 1,
   name: "iPhone 12 pro max",
   desc: "Apple iPhone 12th generation",
   price: 999,
   color: "#33505a",
   image: "assets/images/iPhone12ProMax.jpg"),
];
}



class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

