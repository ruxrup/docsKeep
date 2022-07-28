import 'package:docs_keep/utils/removeID.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/dataClass.dart';
import '../widgets/dataManager.dart';
import '../widgets/drawer.dart';

class removeData extends StatefulWidget {
  @override
  State<removeData> createState() => _removeDataState();
}

class _removeDataState extends State<removeData> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    data_list = await dataManager().readData();
    setState(() {});
  }

  var keyToRemove = GlobalKey<FormState>();
  final id_controller = TextEditingController();
  var id_to_remove = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Remove existing Data"),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: (data_list.isEmpty)
            ? Center(
                child: Text("NO DATA AVAILABLE TO REMOVE!"),
              )
            : Center(
                child: Form(
                    key: keyToRemove,
                    child: ListView(
                      children: [
                        Card(
                          child: TextFormField(
                            validator: ((value) {
                              if ((value == null || value.isEmpty) ||
                                  !(removeID(value).check_id())) {
                                return ("Invalid ID!");
                              } else {
                                return null;
                              }
                            }),
                            controller: id_controller,
                            onChanged: ((value) {
                              id_to_remove = value;
                            }),
                            decoration: InputDecoration(
                                hintText: "Enter a Valid Document ID",
                                labelText: "Enter a ID to remove"),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              keyToRemove.currentState!.validate() == false
                                  ? (ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Data not Removed!')),
                                    ))
                                  : removed(context, id_to_remove);
                              id_controller.clear();
                            },
                            child: Text("REMOVE DOCUMENT"))
                      ],
                    )),
              ),
        drawer: myDrawer());
  }
}

removed(context, id) {
  removeID(id).remove();
  (ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Data Removed!')),
  ));
}
