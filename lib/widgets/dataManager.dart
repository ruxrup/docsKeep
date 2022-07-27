import 'dart:convert';
import 'dart:io';

import 'package:docs_keep/models/dataClass.dart';

class dataManager {
  File data = File("assets/data/data.txt");

  readData() async {
    String fileContents = await data.readAsString();
    return json.decode(fileContents);
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
