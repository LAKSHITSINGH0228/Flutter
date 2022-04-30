import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class  HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Flutter";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text("Catalog App"),
      ),
        body: Center(
          child: Container( 
            child: Text(context.runtimeType.toString()),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
} 