import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:noteapp/main.dart';

import 'package:noteapp/GUI-Lib/gui-main.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // logo Icon

                Container(
                  child: LOgoIcon(148, 148, "images/logo0.png"),
                  margin: EdgeInsets.only(top: 100, bottom: 150),
                ),

                /*logo End 
                            size =148.0
                            center..
                             */
                /////////////////////////////////_____________________////////////////////////////////////////////
                // Text Input

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Donia_Input("UserName", Icon(Icons.person), false),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Donia_Input("Password", Icon(Icons.key), true),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                ),

                //END Text Input
                /*tow input box text 
                                padding ==8.0
                                space between them 20.0
                                 */
                /////////////////////////////////_____________________////////////////////////////////////////////

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.facebook),
                      color: Colors.blue,
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz),
                      color: Color(0xffEFBF00),
                      iconSize: 50,
                    ),
                  ],
                ),
                // Buttons Star
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button3lsaramegy_text(
                          Color(0xffEFBF00), 175, 50, Text("Sing In"), (() {
                        Navigator.of(context).pushReplacementNamed("home");
                      }), 27),
                      SizedBox(
                        width: 10,
                        height: 1,
                      ),
                      //0xff72716D
                      Button3lsaramegy_text(
                          Color(0xff72716D), 175, 50, Text("Sing Up"), (() {
                        Navigator.of(context).pushReplacementNamed("singUp");
                      }), 27),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
