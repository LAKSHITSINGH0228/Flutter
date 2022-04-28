class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(id: "Codepur001",
   name: "iPhone 12 pro max",
   desc: "Apple iPhone 12th generation",
   price: 999,
   color: "#33505a",
   image: "assets/images/iphone12ProMax.jpg"),


];
