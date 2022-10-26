import 'package:flutter/material.dart';

import 'package:noteapp/GUI-Lib/gui-main.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LOgoIcon(148, 148, "images/logo0.png"),
                Donia_Input("UserName", Icon(Icons.person), false),
                Donia_Input("Email", Icon(Icons.email), false),
                Donia_Input("Password", Icon(Icons.key), true),
                Donia_Input("R-Password", Icon(Icons.key), true),
                Donia_Input("FullName", Icon(Icons.person_add), false),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button3lsaramegy_text(
                        Color(0xffEFBF00), 200, 50, Text("SingUp"), () {}, 27),
                    SizedBox(
                      width: 20,
                      height: 1,
                    ),
                    Button3lsaramegy_text(
                        Color(0xff72716D),
                        75,
                        75,
                        Center(
                          child: Container(
                            child: Icon(
                              Icons.arrow_back,
                              size: 35,
                            ),
                          ),
                        ), () {
                      Navigator.pushNamed(context, "login");
                    }, 50)
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
