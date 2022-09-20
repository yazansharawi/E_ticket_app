import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:movie_app/Main/Screens/SignIn.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  var h;
  int color = 2;
  Color whatcolor(int w){
    return h = Colors.black;
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              child:Column(
                children:[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset("lib/Main/Img/jj_flag.png")),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 10, 0),
                          child: SizedBox(
                            width: 80,
                            child: TextButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor:Color.fromRGBO(116, 157, 181,1),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => signin()),
                                );
                              },
                              child: Text('Sign In'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 10, 0),
                          child: SizedBox(
                            width: 80,
                            child: TextButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor:Color.fromRGBO(116, 157, 181,1),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              ),
                              onPressed: () { },
                              child: Text('Sign Up',style: TextStyle(color: whatcolor(color)),),
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    width: width,
                    child: Center(
                      child: Text("Welcome to the E-ticket",
                        textAlign: TextAlign.center,
                        style:TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
                      ),
                    ),
                  ),
                 SizedBox(
                   height:280,
                     width: width,
                     child:
                 ClipRRect(
                   borderRadius: BorderRadius.circular(15.0),
                     child: Image.asset("lib/Main/Img/popcorn.jpeg",),
                 ),
                 ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      decoration:  InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Enter your full name',
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      decoration:  InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Example@gmail.com',
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      decoration:  InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    height: 40,
                    width: 350,
                    child: TextButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor:Color.fromRGBO(116, 157, 181,1),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: () {

                      },
                      child: Text('Sign in'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }

}

