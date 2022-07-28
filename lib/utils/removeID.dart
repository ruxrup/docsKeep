import 'dart:convert';
import 'dart:io';

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
  remove() {
    dataClass element;
    data_list.removeWhere((element) => element.id == id);
    File _updated_file = File("assets/data/data.txt");
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
  File updated_file = File("assets/data/data.txt");
  updated_file.create();
  for (element in data_list) {
    await updated_file.writeAsString(json.encode(element) + "\n",
        mode: FileMode.append);
  }
}
