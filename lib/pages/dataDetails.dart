
import 'package:DocsKeep/models/dataClass.dart';
import 'package:DocsKeep/widgets/drawer.dart';
import 'package:flutter/material.dart';

class dataDetails extends StatelessWidget {
  dataDetails(data_stored) {
    data = data_stored;
  }
  dataClass data = new dataClass(title: "testClass", name: "testname");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title + " - " + data.id),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Card(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/homeImage.png",
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            (data.name != "")
                ? ListTile(
                    leading: Text(
                      "Name on Document: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(data.name),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.number != 0)
                ? ListTile(
                    leading: Text(
                      "Document Number: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(data.number.toString()),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.cvv != 0)
                ? ListTile(
                    leading: Text(
                      "CVV: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(data.cvv.toString()),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.address != "")
                ? ListTile(
                    leading: Text(
                      "Address on Document: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(data.address),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.zip != 0)
                ? ListTile(
                    leading: Text(
                      "ZIP: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(data.zip.toString()),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.phone != 0)
                ? ListTile(
                    leading: Text(
                      "Phone No. : ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(data.phone.toString()),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
          ],
        ),
      ),
      drawer: myDrawer(),
    );
  }
}
