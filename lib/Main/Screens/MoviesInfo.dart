import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/HomePage.dart';
import 'dart:io' show Platform;

import 'package:movie_app/Main/Screens/SignUp.dart';

class movinfo extends StatefulWidget {
  @override
  _movinfoState createState() => _movinfoState();
}


class _movinfoState extends State<movinfo> {
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
                  "Movie details",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        height: 250,
                        width: 170,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 250,
                      width: 130,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 200, 5, 0),
                      child: Container(
                        width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(116, 157, 181, 1.0),
                          ),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => homepage()),
                            );
                          },
                          child:Text("Book Now",style: TextStyle(color: Colors.white,fontSize: 10),) ,
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
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("About the Movie",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Container(
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever"
                      " since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also "
                      "the leap i""nto electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
                      "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
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
                      Text("Reviews",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 180.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                      ),
                      width: 160.0,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      width: 160.0,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      width: 160.0,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.yellow,
                      ),
                      width: 160.0,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange,
                      ),
                      width: 160.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

