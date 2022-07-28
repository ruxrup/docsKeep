import 'dart:io';
import 'package:docs_keep/widgets/drawer.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:ui';

import '../models/dataClass.dart';
import '../widgets/data_widgets.dart';
import '../widgets/dataManager.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    data_list = await dataManager().readData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Docs"),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: (data_list.isNotEmpty && data_list != null)
            ? ListView.builder(
                itemCount: data_list.length,
                itemBuilder: ((context, index) {
                  return dataWidget(data_to_show: data_list[index]);
                }))
            : Center(
                child: Text("NO DATA AVAILABLE!"),
              ),
        drawer: myDrawer());
  }
}
