import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/images/homeImage.png",
            height: 150,
            width: 150,
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
