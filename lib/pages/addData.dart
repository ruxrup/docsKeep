import 'package:docs_keep/utils/dataFiels.dart';
import 'package:docs_keep/widgets/dataManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/drawer.dart';

class addData extends StatefulWidget {
  const addData({super.key});

  @override
  State<addData> createState() => _addDataState();
}

bool numCheck(var str) {
  var value = int.tryParse(str);
  if (value == null) {
    return false;
  }
  return true;
}

class _addDataState extends State<addData> {
  createDataField dataField = createDataField();
  var dataKey = GlobalKey<FormState>();

  String title = "";
  String name = "";
  int number = 0;
  int cvv = 0;
  String address = "";
  int zip = 0;
  int phone = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add new Data"),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
            child: Form(
          key: dataKey,
          child: ListView(
            children: [
              Card(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ("Title is Required!");
                    } else {
                      return null;
                    }
                  },
                  controller: dataField.title_dataField,
                  onChanged: (value) {
                    title = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Title",
                      labelText: "Enter a Title for your Doc"),
                ),
              ),
              Card(
                child: TextFormField(
                  controller: dataField.name_dataField,
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Title",
                      labelText: "Enter a Title for your Doc"),
                ),
              ),
              Card(
                child: TextFormField(
                  validator: (value) {
                    if (!numCheck(value)) {
                      return ("Enter a valid Number");
                    } else {
                      return null;
                    }
                  },
                  controller: dataField.number_dataField,
                  onChanged: (value) {
                    number = !numCheck(value) ? 0 : int.parse(value);
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Title",
                      labelText: "Enter a Title for your Doc"),
                ),
              ),
              Card(
                child: TextFormField(
                  validator: (value) {
                    if (!numCheck(value)) {
                      return ("Enter a valid Number");
                    } else {
                      return null;
                    }
                  },
                  controller: dataField.cvv_dataField,
                  onChanged: (value) {
                    cvv = !numCheck(value) ? 0 : int.parse(value);
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Title",
                      labelText: "Enter a Title for your Doc"),
                ),
              ),
              Card(
                child: TextFormField(
                  controller: dataField.address_dataField,
                  onChanged: (value) {
                    address = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Title",
                      labelText: "Enter a Title for your Doc"),
                ),
              ),
              Card(
                child: TextFormField(
                  validator: (value) {
                    if (!numCheck(value)) {
                      return ("Enter a valid Number");
                    } else {
                      return null;
                    }
                  },
                  controller: dataField.zip_dataField,
                  onChanged: (value) {
                    zip = !numCheck(value) ? 0 : int.parse(value);
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Title",
                      labelText: "Enter a Title for your Doc"),
                ),
              ),
              Card(
                child: TextFormField(
                  validator: (value) {
                    if (!numCheck(value)) {
                      return ("Enter a valid Number");
                    } else {
                      return null;
                    }
                  },
                  controller: dataField.phone_dataField,
                  onChanged: (value) {
                    phone = !numCheck(value) ? 0 : int.parse(value);
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Title",
                      labelText: "Enter a Title for your Doc"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    dataManager().writeData(
                        title_data: title,
                        name_data: name,
                        number_data: number,
                        cvv_data: cvv,
                        address_data: address,
                        zip_data: zip,
                        phone_data: phone);
                    dataKey.currentState!.validate() == false
                        ? (ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Data not Saved!')),
                          ))
                        : (ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text("Data Saved!")),
                            behavior: SnackBarBehavior.floating,
                            elevation: 0.0,
                            backgroundColor: Colors.black,
                          )));
                    dataField.clearDataField();
                  },
                  child: Text("hello world"))
            ],
          ),
        )),
        drawer: myDrawer());
  }
}
