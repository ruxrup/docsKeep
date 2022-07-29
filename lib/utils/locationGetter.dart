import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get localFile async {
  final path = await _localPath;
  File _data = File('$path/data.txt');
  if (await _data.exists()) {
    return _data;
  } else {
    _data.create();
    return _data;
  }
}
