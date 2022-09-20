import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/SignIn.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Calculator",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: signin(),
    );
  }
}