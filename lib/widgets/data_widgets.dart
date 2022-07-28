import 'package:docs_keep/models/dataClass.dart';
import 'package:docs_keep/utils/dataFiels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class dataWidget extends StatelessWidget {
  final dataClass data_to_show;
  const dataWidget({super.key, required this.data_to_show});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
            title: Text(
      data_to_show.title,
    )));
  }
}
