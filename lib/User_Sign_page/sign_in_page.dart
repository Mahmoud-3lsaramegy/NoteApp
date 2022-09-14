import 'dart:ui';

import 'package:flutter/material.dart';

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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // logo Icon
          Center(
            child: Container(
                width: 148,
                height: 148,
                child: Image.asset(
                  "images/logo0.png",
                  filterQuality: FilterQuality.none,
                  fit: BoxFit.fill,
                )),
          ),
          /*logo End 
          size =148.0
          center..
           */
/////////////////////////////////_____________________////////////////////////////////////////////
          // Text Input
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Form(
                child: TextFormField(
                  maxLines: 1,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "UserName",
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1.0)),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Form(
                child: TextFormField(
                  maxLines: 1,
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.0),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          //END Text Input
          /*tow input box text 
              padding ==8.0
              space between them 20.0
               */
/////////////////////////////////_____________________////////////////////////////////////////////
// Buttons Star
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 40,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(27)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign In"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffEFBF00)),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 100,
                height: 40,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(27)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign up"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff72716D)),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
