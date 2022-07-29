import 'dart:io';
import 'package:DocsKeep/pages/addData.dart';
import 'package:DocsKeep/pages/home.dart';
import 'package:flutter/material.dart';

import '../pages/removeData.dart';

class myDrawer extends StatefulWidget {
  const myDrawer({super.key});

  @override
  State<myDrawer> createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            curve: Curves.fastOutSlowIn,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.only(
                top: 0.0,
                bottom: 0.0,
              ),
              accountName: Text("  DocsKeep"),
              accountEmail: Text("  @ruxrup"),
              currentAccountPicture: Image.asset(
                "assets/images/introImage.png",
              ),
              currentAccountPictureSize: const Size.fromRadius(35),
            )),
        Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage())),
            ),
            ListTile(
              leading: Icon(Icons.data_saver_on_rounded),
              title: Text("Add Data"),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => addData())),
            ),
            ListTile(
              leading: Icon(Icons.remove_circle_outline_rounded),
              title: Text("Remove Data"),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => removeData())),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () => exit(1),
            )
          ],
        )
      ],
    ));
  }
}
