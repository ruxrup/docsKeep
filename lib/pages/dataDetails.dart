import 'package:docs_keep/models/dataClass.dart';
import 'package:docs_keep/widgets/drawer.dart';
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
      ),
      body: Card(
        child: Column(
          children: [
            (data.name != "")
                ? ListTile(
                    leading: Text("Name on Document: "),
                    title: Text(data.name),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.number != 0)
                ? ListTile(
                    leading: Text("Document Number: "),
                    title: Text(data.number.toString()),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.cvv != 0)
                ? ListTile(
                    leading: Text("CVV: "),
                    title: Text(data.cvv.toString()),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.address != "")
                ? ListTile(
                    leading: Text("Address on Document: "),
                    title: Text(data.address),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.zip != 0)
                ? ListTile(
                    leading: Text("ZIP: "),
                    title: Text(data.zip.toString()),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            (data.phone != 0)
                ? ListTile(
                    leading: Text("Phone No. : "),
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
