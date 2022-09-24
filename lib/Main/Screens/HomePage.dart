import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/BookingPage.dart';
import 'dart:io' show Platform;

import 'package:movie_app/Main/Screens/SignUp.dart';

import 'FavoritesPage.dart';
import 'MoviesInfo.dart';
import 'SettingsPage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.list,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 270,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.doorbell_sharp,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset("lib/Main/Img/jj_flag.png"))),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                  child: Row(
                    children: [
                      Text("Good Afternoon,",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("Yazan",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("Would you like to watch today ?",
                          style: TextStyle(fontSize: 20)),
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
                      Text("Recently booked",
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
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie1.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie2.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },child: MovieCont("lib/Main/Img/movie3.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie4.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie5.jpeg"),
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
                      Text("Trending",
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
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie6.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie7.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie8.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie9.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie10.jpeg"),
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
                      Text("Recommended movies",
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
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie11.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie12.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie13.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie14.jpeg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => movinfo()),
                        );
                      },
                      child: MovieCont("lib/Main/Img/movie15.jpeg"),
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
            currentIndex: 0,
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
}
