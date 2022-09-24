import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/HomePage.dart';
import 'dart:io' show Platform;

import 'package:movie_app/Main/Screens/SignUp.dart';

import 'BookingPage.dart';
import 'SettingsPage.dart';

class fav extends StatefulWidget {
  @override
  _favState createState() => _favState();
}



class _favState extends State<fav> {
  int _selectedIndex = 0;
  List<String> list = <String>['Sort', 'Name', 'Ratings', 'Date release'];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
              child: Text(
            "Favorites",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          backgroundColor: Color.fromRGBO(116, 157, 181, 1.0),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Your favorites movies,",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "are all in one place",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(280, 0, 0, 0),
                  child: Row(
                    children: [
                      DropdownButtonExample(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.black, //color of divider
                height: 5, //height spacing of divider
                thickness: 3, //thickness of divier line
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("Action",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 200.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie16.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie17.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie18.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie19.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie20.jpeg"),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black, //color of divider
                height: 5, //height spacing of divider
                thickness: 3, //thickness of divier line
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("Comedy",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 200.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie21.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie21.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie23.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie24.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie25.jpeg"),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black, //color of divider
                height: 5, //height spacing of divider
                thickness: 3, //thickness of divier line
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("Horror",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 200.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie26.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie27.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie28.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie29.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      child: MovieCont("lib/Main/Img/movie30.jpeg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(116, 157, 181, 1),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromRGBO(116, 157, 181, 1),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
                backgroundColor: Color.fromRGBO(116, 157, 181, 1),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Calendar',
                backgroundColor: Color.fromRGBO(116, 157, 181, 1),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Color.fromRGBO(116, 157, 181, 1),
              ),
            ],
            currentIndex: 1,
            selectedItemColor: Colors.black,
            onTap: (value) {
              if (value == 0)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              if (value == 1)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fav()),
                );
              if (value == 2)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Book()),
                );
              if (value == 3)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settings()),
                );
            }),
      ),
    );
  }
}



class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF749DB5),
      ),
      width: 130,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(
          Icons.arrow_downward,
          color: Colors.white,
        ),
        elevation: 0,
        style: TextStyle(color: Colors.white),
        underline: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          height: 2,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
            ),
          );
        }).toList(),
      ),
    );
  }

}
Container MovieCont(String i) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: AssetImage(i),
        fit: BoxFit.fill,
      ),
    ),
    width: 160.0,
  );
}

