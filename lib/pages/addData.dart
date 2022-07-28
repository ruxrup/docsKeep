import 'package:docs_keep/utils/addDataBody.dart';
import 'package:flutter/material.dart';
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
        body: addDataBody(),
        drawer: myDrawer());
  }
}
