import 'package:flutter/material.dart';

class createDataField {
  final title_dataField = TextEditingController();
  final name_dataField = TextEditingController();
  final number_dataField = TextEditingController();
  final cvv_dataField = TextEditingController();
  final address_dataField = TextEditingController();
  final zip_dataField = TextEditingController();
  final phone_dataField = TextEditingController();
  final id_dataField = TextEditingController();

  void clearDataField() {
    title_dataField.clear();
    name_dataField.clear();
    number_dataField.clear();
    cvv_dataField.clear();
    address_dataField.clear();
    zip_dataField.clear();
    phone_dataField.clear();
    id_dataField.clear();
  }
}
