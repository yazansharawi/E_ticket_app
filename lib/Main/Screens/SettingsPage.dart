import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/HomePage.dart';
import 'dart:io' show Platform;

import 'package:movie_app/Main/Screens/SignUp.dart';

import 'BookingPage.dart';
import 'FavoritesPage.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

List<String> list = <String>['Sort', 'Name', 'Ratings', 'Date release'];

class _settingsState extends State<settings> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Favorites',
      style: optionStyle,
    ),
    Text(
      'Index 2: Calendar',
      style: optionStyle,
    ),
    Text(
      'Index 2: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
              child: Text(
                "Settings",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Color.fromRGBO(116, 157, 181, 1.0),
        ),
        body: Column(
          children: [
            Padding(
              padding:const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.yellow,
                          ),
                          child: Center(child: Text("Image")),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 150,
                          width: 160,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Column(
                              children: [
                                Container(
                                  child:
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child:
                                      Text("Yazan Sharawi",style: TextStyle(fontSize: 20),)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("+962792938980",style: TextStyle(fontSize: 15),)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Premium Subscription",style: TextStyle(fontSize: 13),)),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 150,
                          width: 30,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.edit,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
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
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(116, 157, 181, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 200,
                            width: 180,
                            child: Center(child: Text("Personal info",style: TextStyle(color: Colors.white),)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(116, 157, 181, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 200,
                            width: 180,
                            child: Center(child: Text("Payment",style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(116, 157, 181, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 200,
                            width: 180,
                            child: Center(child: Text("Manage account",style: TextStyle(color: Colors.white),)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(116, 157, 181, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 200,
                            width: 180,
                            child: Center(child: Text("Your bookings",style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red
                      ),
                      child: Center(child: Text("Sign out")),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
            currentIndex: 3,
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
