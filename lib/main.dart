import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    
    //Num will take int as well as double type datatypes
    return MaterialApp(
     
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/home",
      routes: {
        "/" : (context)=>LoginPage(),
        "/home" : (context)=>HomePage(),
        "/login" : (context)=>LoginPage()
        
      },
    );
  }
}
 