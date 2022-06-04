import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  static List<Item> itemsID = [];

// catalog field

  late CatalogModel _catalog;

// collection field  - store Ids of each item
  final List<int> _itemIds = [];

// get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newcatalog) {
    assert(newcatalog != null);
    _catalog = newcatalog;
  }

// Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

// add item

  void add(Item item) {
    _itemIds.add(item.id.toInt());
  }

  void remove(Item item) {
    _itemIds.remove(item.id.toInt());
  }
}
