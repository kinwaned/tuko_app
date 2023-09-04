import 'package:flutter/material.dart';
import 'package:tuko_app/screens/home_page.dart';

void main() {
  runApp(const TukoApp());
}

class TukoApp extends StatelessWidget {
  const TukoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
