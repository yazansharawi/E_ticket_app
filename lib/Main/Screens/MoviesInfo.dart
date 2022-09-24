import 'package:flutter/material.dart';
import 'package:movie_app/Main/Screens/BookingPage.dart';
import 'package:movie_app/Main/Screens/HomePage.dart';
import 'dart:io' show Platform;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 35, 0),
            child: Text(
              "Movie details",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
          backgroundColor: Color.fromRGBO(116, 157, 181, 1.0),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/Main/Img/movie1.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 200.0,
                        width: 160.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 250,
                      width: 110,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 35, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Movie name:Thor",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Actors:yazan,zaid,abod",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Category : Action",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 200, 5, 0),
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(116, 157, 181, 1.0),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Book()),
                            );
                          },
                          child: Text(
                            "Book Now",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
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
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever"
                      " since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also "
                      "the leap i"
                      "nto electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
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
                height: 190.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(116, 157, 181, 1.0),
                      ),
                      width: 160.0,
                      child: Reviews_cont("lib/Main/Img/man1.jpeg","Yazan Sharawi",4,"Amazing"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(116, 157, 181, 1.0),
                      ),
                      width: 160.0,
                      child: Reviews_cont("lib/Main/Img/man2.jpeg","Zaid samer",3,"Not bad"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(116, 157, 181, 1.0),
                      ),
                      width: 160.0,
                      child: Reviews_cont("lib/Main/Img/man3.jpeg","Hazem jaber",3.5,"Great film"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(116, 157, 181, 1.0),
                      ),
                      width: 160.0,
                      child: Reviews_cont("lib/Main/Img/man4.jpeg","Yazan abod",1,"bad"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(116, 157, 181, 1.0),
                      ),
                      width: 160.0,
                      child: Reviews_cont("lib/Main/Img/women1.jpeg","salma zaid",2.5,"cool"),
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

  Align Reviews_cont(String i,String w,double l,String m) {
    Alignment.center;
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Center(
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(i),
                              fit: BoxFit.fill,
                            ),
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
           Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Center(
                        child: Text(w,style: TextStyle(color: Colors.white),)),
                  ),
                ],
              ),
           ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
                    child: RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 20,
                      initialRating: l,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
            ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Text(m, style: TextStyle(color: Colors.white),),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
