import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Flutter";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    // ignore: unused_local_variable
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    final productsData = decodedData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          //itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
                //item: CatalogModel.items[index],
                item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
