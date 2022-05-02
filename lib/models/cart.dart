// ignore_for_file: unused_field, unnecessary_getters_setters, unnecessary_null_comparison

import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
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
  // void add(Item item) {
  //   _itemsIds.add(item.id);
  // }

  // Remove items
  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemsIds.add(item.id);
  }
}
