import 'package:flutter/material.dart';
import '../models/dataClass.dart';
import '../widgets/data_widgets.dart';
import '../widgets/dataManager.dart';
import '../widgets/drawer.dart';

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
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: (data_list.isNotEmpty)
            ? ListView.builder(
                itemCount: data_list.length,
                itemBuilder: ((context, index) {
                  return dataWidget(data_to_show: data_list[index]);
                }))
            : Center(
                child: Text("Add documents by opening the drawer."),
              ),
        drawer: myDrawer());
  }
}
