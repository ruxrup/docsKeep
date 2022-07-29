import 'dart:convert';
import 'dart:io';

import 'package:docs_keep/utils/locationGetter.dart';

import '../models/dataClass.dart';
import '../widgets/dataManager.dart';

loadData() async {
  data_list = await dataManager().readData();
}

class removeID {
  String id = "";
  removeID(id_to_remove) {
    id = id_to_remove;
  }
  remove() async {
    dataClass element;
    data_list.removeWhere((element) => element.id == id);
    File _updated_file = await localFile;
    _updated_file.delete();
    createnew();
  }

  bool check_id() {
    dataClass element_;
    bool present = false;
    for (element_ in data_list) {
      if (element_.id == id) {
        present = true;
      }
    }
    return present;
  }
}

createnew() async {
  dataClass element;
  File updated_file = await localFile;
  updated_file.create();
  for (element in data_list) {
    await updated_file.writeAsString(json.encode(element) + "\n",
        mode: FileMode.append);
  }
}
