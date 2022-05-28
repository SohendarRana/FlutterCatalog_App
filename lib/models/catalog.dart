import 'package:flutter/foundation.dart';

class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.color,
    required this.desc,
    required this.image,
    required this.name,
    required this.price,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        color: map["color"],
        desc: map["desc"],
        image: map["image"],
        name: map["name"],
        price: map["price"]);
  }

  toMap() => {
        "id": id,
        "color": color,
        "desc": desc,
        "iimage": image,
        "name": name,
        "price": price,
      };
}
