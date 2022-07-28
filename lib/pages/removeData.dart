import 'package:docs_keep/utils/removeID.dart';
import 'package:flutter/material.dart';
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
          title: Text("Remove existing Doc"),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
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
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          "assets/images/removeDataImage.png",
                          height: 200,
                          width: 200,
                        ),
                        SizedBox(
                          height: 30,
                        ),
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
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan,
                                foregroundColor: Colors.white,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.all(20),
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
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
