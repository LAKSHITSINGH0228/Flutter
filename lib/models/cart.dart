// ignore_for_file: unused_field, unnecessary_getters_setters

import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  // singleton class

  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;

  // catalog field
  late CatalogModel _catalog;

  // collection of IDs - store IDs of each item
  final List<int> _itemsIds = [];

  // get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get items in the cart
  List<Item> get items => _itemsIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add items
  void add(Item item) {
    _itemsIds.add(item.id);
  }

  // Remove items
  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}
