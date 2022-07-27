import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/drawer.dart';

class removeData extends StatefulWidget {
  const removeData({super.key});

  @override
  State<removeData> createState() => _removeDataState();
}

class _removeDataState extends State<removeData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Remove existing Data"),
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
