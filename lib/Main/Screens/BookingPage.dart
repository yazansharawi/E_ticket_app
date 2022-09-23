import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/HomePage.dart';
import 'dart:io' show Platform;

import 'package:movie_app/Main/Screens/SignUp.dart';

import 'FavoritesPage.dart';
import 'SettingsPage.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}


class _BookState extends State<Book> {
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
      child:Scaffold(
        appBar: AppBar(
          title: Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 35, 0),
                child: Text(
                  "Booking",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )),
          backgroundColor: Color.fromRGBO(116, 157, 181, 1.0),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                child: Row(
                  children: [
                    Text("Movie Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
         Padding(
           padding: const EdgeInsets.fromLTRB(110, 0, 50, 0),
           child: Container(
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Taken"),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            width: 50,
                            height: 20,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("VIP"),
                        ],
                      ),
                    ),
           ),
         ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(110, 0, 50, 0),
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Available"),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("regular seat"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 250,
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: Row(
                    children: [
                      Center(child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: Container(
                          height: 100,
                          width: 150,
                          color: Colors.white,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Small_Seats(),
            SizedBox(
              height: 10,
            ),
            Small_Seats(),
            SizedBox(
              height: 10,
            ),
            Small_Seats(),
            SizedBox(
              height: 10,
            ),
            Small_Seats(),
            SizedBox(
              height: 10,
            ),
            Small_Seats(),
            SizedBox(
              height: 10,
            ),
            Small_Seats(),
            SizedBox(
              height: 15,
            ),
            Big_seats(),
            SizedBox(
              height: 10,
            ),
            Big_seats(),
            SizedBox(
              height: 10,
            ),
            Big_seats(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:  Color.fromRGBO(116, 157, 181, 1.0),
                ),
                child: Center(child: Text("Book Now")),
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
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
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
                  MaterialPageRoute(builder: (context) => signup()),
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

class Big_seats extends StatelessWidget {
  const Big_seats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(90, 0, 50, 0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),

        ],
      ),
    );
  }
}

class Small_Seats extends StatelessWidget {
  const Small_Seats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(110, 0, 50, 0),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

