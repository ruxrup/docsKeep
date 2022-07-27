import 'dart:io';
import 'dart:ui';

import 'package:docs_keep/pages/addData.dart';
import 'package:docs_keep/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("user"),
              accountEmail: Text("useraccount"),
              currentAccountPicture: Icon(Icons.person),
              currentAccountPictureSize: const Size.square(50),
            )),
        Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: "goto home"))),
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
