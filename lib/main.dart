import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(const Talabat());
}

class Talabat extends StatelessWidget {
  const Talabat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

