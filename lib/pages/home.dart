import 'package:docs_keep/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool noDoc = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Docs"),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: noDoc
            ? Center(
                child: Text("No data available"),
              )
            : Center(
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
