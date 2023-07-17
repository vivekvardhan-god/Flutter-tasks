import 'package:flutter/material.dart';
import 'package:untitled/listbuilder.dart';
import 'package:untitled/screens/signUp.dart';
import 'package:untitled/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: themes.theme,
      home: signUp(),
      //home: Event(),

    );
  }

}