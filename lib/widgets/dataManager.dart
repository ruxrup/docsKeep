import 'dart:convert';
import 'dart:io';

import 'package:docs_keep/models/dataClass.dart';

class dataManager {
  File data = File("assets/data/data.txt");

  readData() async {
    List fileContents_list = await data.readAsLines();
    List fileContents_list_decode =
        new List.filled(fileContents_list.length, 0, growable: true);
    String values;
    int c = 0;
    for (values in fileContents_list) {
      fileContents_list_decode[c] = json.decode(values);
      c += 1;
    }
    List fileContents = List.from(fileContents_list_decode)
        .map<dataClass>((object) => dataClass.fromJson(object))
        .toList();
    return fileContents;
  }

  writeData({
    required String title_data,
    name_data = "",
    number_data = 0,
    cvv_data = 0,
    address_data = "",
    zip_data = 0,
    phone_data = 0,
  }) async {
    dataClass dataToWrite = dataClass(
        title: title_data,
        name: name_data,
        cvv: cvv_data,
        address: address_data,
        zip: zip_data,
        phone: phone_data,
        number: number_data);
    await data.writeAsString(json.encode(dataToWrite) + "\n",
        mode: FileMode.append);
  }
}
