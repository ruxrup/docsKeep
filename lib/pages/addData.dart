import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/drawer.dart';

class addData extends StatefulWidget {
  const addData({super.key});

  @override
  State<addData> createState() => _addDataState();
}

class _addDataState extends State<addData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add new Data"),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
            child: ListView(
          children: [
            Card(
              child: Text("hello world"),
            )
          ],
        )),
        drawer: myDrawer());
  }
}
