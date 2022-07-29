import 'package:DocsKeep/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

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
      home: SplashScreen(
          title: Text(
            "DocsKeep",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          loadingText: Text(
            "Please wait while we organise your documents",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          styleTextUnderTheLoader:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan),
          photoSize: 80,
          image: Image.asset(
            "assets/images/introImage.png",
          ),
          seconds: 3,
          navigateAfterSeconds: MyHomePage()),
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
