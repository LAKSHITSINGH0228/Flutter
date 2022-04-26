import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    
    //Num will take int as well as double type datatypes
    return MaterialApp(
      home: HomePage(),
    );
  }
}
