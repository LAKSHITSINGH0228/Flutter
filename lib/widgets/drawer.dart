// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "assets/images/image_focus.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Lakshit Singh"),
                accountEmail: Text("lakshitsingh0228@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                ),
                
               ),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor: 1.2, style: TextStyle(color: Colors.white),)//, textColor: Colors.white,
            ),

             ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Email me", textScaleFactor: 1.2, style: TextStyle(color: Colors.white),)//, textColor: Colors.white,
            ),

             ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("Profile", textScaleFactor: 1.2, style: TextStyle(color: Colors.white),)//, textColor: Colors.white,
            )

          ],
        ),
      ),
    );
  }
}
