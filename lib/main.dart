import 'package:coffe/module/screen_01.dart';
import 'package:coffe/module/screen_02.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange
      ),
      debugShowCheckedModeBanner: false,
      home:  DetailsScreen(),
    );
  }
}

