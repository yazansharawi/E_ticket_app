import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/BookingPage.dart';
import 'package:movie_app/Main/Screens/FavoritesPage.dart';
import 'package:movie_app/Main/Screens/HomePage.dart';
import 'package:movie_app/Main/Screens/MoviesInfo.dart';
import 'package:movie_app/Main/Screens/SettingsPage.dart';
import 'package:movie_app/Main/Screens/SignIn.dart';
import 'package:movie_app/Main/Screens/SignUp.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Book(),
    );
  }
}