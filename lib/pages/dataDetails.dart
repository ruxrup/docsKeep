import 'package:docs_keep/models/dataClass.dart';
import 'package:docs_keep/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class dataDetails extends StatelessWidget {
  dataDetails(data_stored) {
    data = data_stored;
  }
  dataClass data = new dataClass(title: "testClass", name: "testname");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Document Details"),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Card(
          child: ListTile(
        title: Text(
          data.title,
        ),
        subtitle: Text(
          data.name,
        ),
        trailing: Text(data.id),
      )),
      drawer: myDrawer(),
    );
  }
}
