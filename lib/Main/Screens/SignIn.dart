import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:movie_app/Main/Screens/SignUp.dart';

class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}
var h;
int color = 1;
Color whatcolor(int w){
  return h = Colors.black;
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child:Scaffold(
          backgroundColor: Colors.white,
          body: Container(
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
                              },
                              child: Text('Sign In',style: TextStyle(color: whatcolor(color)),),
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => signup()),
                                );
                              },
                              child: Text('Sign Up'),
                            ),
                          ),
                        ),
                        
                      ],
                      
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  width: width,
                  child: Center(
                    child: Text("Welcome Back !",
                      textAlign: TextAlign.center,
                      style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                  ),
                ),
                ),
                Container(
                  child:Column(
                    children:[
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
                        height: 50,
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
                        height: 8,
                      ),
                      Container(
                        child:
                        Align(
                          alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                              child: Text("Forget Password ?",style: TextStyle(fontSize: 10),),
                            )),
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
                          onPressed: () { },
                          child: Text('Sign in'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Center(child: Text("Or connect using",style: TextStyle(fontSize: 15),)),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             SizedBox(
                                  width: 150,
                                  child: TextButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor:Color.fromRGBO(116, 157, 181,1),
                                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                    ),
                                    onPressed: () { },
                                    child: Text('Continue with Google',style: TextStyle(fontSize: 10),),
                                  ),
                                ),
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                  width: 150,
                                  child: TextButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor:Color.fromRGBO(116, 157, 181,1),
                                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                    ),
                                    onPressed: () { },
                                    child: Text('Continue with Facebook',style: TextStyle(fontSize: 10),),
                                  ),
                              ),
                            ],
                          ),
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

