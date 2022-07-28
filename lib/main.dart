import 'package:docs_keep/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DocsKeep',
      home: MyHomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          fontFamily: "Raleway",
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.cyan,
              onPrimary: Colors.white,
              secondary: Colors.white,
              onSecondary: Colors.white,
              error: Colors.cyan,
              onError: Colors.white,
              background: Colors.white,
              onBackground: Colors.cyan,
              surface: Colors.cyan,
              onSurface: Colors.white),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.cyan,
            foregroundColor: Colors.white,
          )),
      darkTheme: ThemeData(),
    );
  }
}
