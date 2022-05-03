// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_detail_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Num will take int as well as double type datatypes
    return MaterialApp(
      //MaterialApp.route should be used when we use VxNavigator
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // routeInformationParser: VxInformationParser(),
      // routerDelegate: VxNavigator(routes: {
      //   "/": (_, __) => MaterialPage(child: LoginPage()),
      //   MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
      //   MyRoutes.homeDetailsRoute: (uri, _) {
      //     final catalog = (VxState.store as MyStore)
      //         .catalog
      //         .getById(int.parse(uri.queryParameters["id"].toString()));
      //     return MaterialPage(
      //         child: HomeDetailPage(
      //       catalog: catalog,
      //     ));
      //   },
      //   MyRoutes.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
      //   MyRoutes.cartRoute: (_, __) => MaterialPage(child: CartPage()),
      // }),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
