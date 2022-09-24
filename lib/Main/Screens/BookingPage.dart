import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/HomePage.dart';
import 'package:movie_app/Main/Screens/SignIn.dart';
import 'dart:io' show Platform;

import 'package:movie_app/Main/Screens/SignUp.dart';

import 'FavoritesPage.dart';
import 'SettingsPage.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

@override
late Color _color = Colors.green;
void initState() {
  Color _color = Colors.green;
}
class _BookState extends State<Book> {

  int _selectedIndex = 2;
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
          automaticallyImplyLeading: false,
          title: Center(
              child: Text(
                  "Booking",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
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
              height: 20,
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
              height: 20,
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
              height: 40,
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
            currentIndex: 2,
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

class Big_seats extends StatefulWidget {
  @override
  _Big_seatsState createState() => _Big_seatsState();
}
class _Big_seatsState extends State<Big_seats> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(90, 0, 50, 0),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              showDialog<String>(context: context, builder: (BuildContextcontext) =>
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(116, 157, 181, 1),
                    ),
                    child: AlertDialog(
                      title:
                      Center(child: const Text('Booking confirmation')),
                      content: Column(
                        children: [
                          Row(
                            children: [
                              Text("Movie Name:"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Yazan Sharawi"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Seat number:"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("4C"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Date:"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("17/07/2028"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),

                        ],
                      ),
                      actions: <
                          Widget>[
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: TextButton(
                              onPressed: () => Navigator.pop(context, 'Confirm'),
                              child:
                              Center(child: const Text('Confirm')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              );
              setState(() {
                _color = Colors.red;
              });
            },
            child: Container(
              width: 50,
              height: 20,
              color: _color,
            ),
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
          GestureDetector(
            onTap: (){
              showDialog<String>(context: context, builder: (BuildContextcontext) =>
                  AlertDialog(
                    title:
                    const Text(
                        'ERROR'),
                    content: const Text("Hi"),
                    actions: <
                        Widget>[
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(
                                context,
                                'OK'),
                        child:
                        const Text(
                            'OK'),
                      ),
                    ],
                  ),
              );
              setState(() {
                _color = Colors.red;
              });
            },
            child: Container(
              width: 50,
              height: 20,
              color: Colors.green,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 20,
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),

        ],
      ),
    );
  }

}


class Small_Seats extends StatefulWidget {
  @override
  _Small_SeatsState createState() => _Small_SeatsState();
}
class _Small_SeatsState extends State<Small_Seats> {
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
          GestureDetector(

            onTap: (){
              showDialog<String>(context: context, builder: (BuildContextcontext) =>
                  AlertDialog(
                    title:
                    const Text('ERROR'),
                    content: const Text("Hi"),
                    actions: <
                        Widget>[
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(
                                context,
                                'OK'),
                        child:
                        const Text(
                            'OK'),
                      ),
                    ],
                  ),
              );
              setState(() {
                _color = Colors.green;
              });
            },
            child: Container(
              width: 20,
              height: 20,
              color: Colors.red,
            ),
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
          GestureDetector(
            onTap: (){
              setState(() {
                _color = Colors.green;
              });
              showDialog<String>(context: context, builder: (BuildContextcontext) =>
                  AlertDialog(
                    title:
                    const Text(
                        'ERROR'),
                    content: const Text("Hi"),
                    actions: <
                        Widget>[
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(
                                context,
                                'OK'),
                        child:
                        const Text(
                            'OK'),
                      ),
                    ],
                  ),
                  );
            },
            child: Container(
              width: 20,
              height: 20,
              color: _color,
            ),
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
            color: _color,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 20,
            height: 20,
            color: _color
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}





