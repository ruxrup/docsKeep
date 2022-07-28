import 'package:docs_keep/utils/dataFiels.dart';
import 'package:docs_keep/utils/removeID.dart';
import 'package:docs_keep/widgets/dataManager.dart';
import 'package:flutter/material.dart';

class addDataBody extends StatelessWidget {
  bool numCheck(var str) {
    var value = int.tryParse(str);
    if (value == null) {
      return false;
    }
    return true;
  }

  createDataField dataField = createDataField();
  var dataKey = GlobalKey<FormState>();

  String title = "";
  String name = "";
  int number = 0;
  int cvv = 0;
  String address = "";
  int zip = 0;
  int phone = 0;
  var id = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Form(
        key: dataKey,
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/addDataImage.png",
              height: 170,
              width: 170,
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ("Title is Mandatory!");
                  } else {
                    return null;
                  }
                },
                controller: dataField.title_dataField,
                onChanged: (value) {
                  title = value;
                },
                decoration: InputDecoration(
                    hintText: "Title",
                    labelText: "Enter a Title for your Document"),
              ),
            ),
            Card(
              child: TextFormField(
                validator: (value) {
                  if ((value == null || value.isEmpty) ||
                      (removeID(value).check_id())) {
                    return ("Enter a valid & unique Data ID!");
                  } else {
                    return null;
                  }
                },
                controller: dataField.id_dataField,
                onChanged: (value) {
                  id = value;
                },
                decoration: InputDecoration(
                    hintText: "Document ID",
                    labelText: "Enter a ID for your Document"),
              ),
            ),
            Card(
              child: TextFormField(
                controller: dataField.name_dataField,
                onChanged: (value) {
                  name = value;
                },
                decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Enter a Name for your Document"),
              ),
            ),
            Card(
              child: TextFormField(
                validator: (value) {
                  if (!numCheck(value) && value!.isNotEmpty) {
                    return ("Enter a valid Number");
                  } else {
                    return null;
                  }
                },
                controller: dataField.number_dataField,
                onChanged: (value) {
                  number = !numCheck(value) ? 0 : int.parse(value);
                },
                decoration: InputDecoration(
                    hintText: "Document No.",
                    labelText: "Enter Document Number"),
              ),
            ),
            Card(
              child: TextFormField(
                validator: (value) {
                  if (!numCheck(value) && value!.isNotEmpty) {
                    return ("Enter a valid Number");
                  } else {
                    return null;
                  }
                },
                controller: dataField.cvv_dataField,
                onChanged: (value) {
                  cvv = !numCheck(value) ? 0 : int.parse(value);
                },
                decoration: InputDecoration(
                    hintText: "CVV",
                    labelText: "Enter a CVV(if Debit/Credit Card)"),
              ),
            ),
            Card(
              child: TextFormField(
                controller: dataField.address_dataField,
                onChanged: (value) {
                  address = value;
                },
                decoration: InputDecoration(
                    hintText: "Address",
                    labelText: "Enter a Address for your Document (if any)"),
              ),
            ),
            Card(
              child: TextFormField(
                validator: (value) {
                  if (!numCheck(value) && value!.isNotEmpty) {
                    return ("Enter a valid Number");
                  } else {
                    return null;
                  }
                },
                controller: dataField.zip_dataField,
                onChanged: (value) {
                  zip = !numCheck(value) ? 0 : int.parse(value);
                },
                decoration: InputDecoration(
                    hintText: "ZIP", labelText: "Enter ZIP code (if any)"),
              ),
            ),
            Card(
              child: TextFormField(
                validator: (value) {
                  if (!numCheck(value) && value!.isNotEmpty) {
                    return ("Enter a valid Number");
                  } else {
                    return null;
                  }
                },
                controller: dataField.phone_dataField,
                onChanged: (value) {
                  phone = !numCheck(value) ? 0 : int.parse(value);
                },
                decoration: InputDecoration(
                    hintText: "Phone No.",
                    labelText: "Enter your Number (if any)"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.white,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.all(20),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onPressed: () {
                dataKey.currentState!.validate() == false
                    ? (ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Data not Saved!')),
                      ))
                    : dataManager().writeData(
                        title_data: title,
                        id_data: id,
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
                      )));
                dataField.clearDataField();
              },
              child: Text("ADD DOCUMENT"),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      )),
    );
  }
}
