
import 'package:DocsKeep/models/dataClass.dart';
import 'package:DocsKeep/pages/dataDetails.dart';
import 'package:flutter/material.dart';

class dataWidget extends StatelessWidget {
  final dataClass data_to_show;
  const dataWidget({super.key, required this.data_to_show});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(
        data_to_show.title,
      ),
      trailing: Text(data_to_show.id),
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => dataDetails(data_to_show))),
    ));
  }
}
