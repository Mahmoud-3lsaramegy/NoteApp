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
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LOgoIcon(148, 148, "images/logo0.png"),
                  SizedBox(
                    height: 15,
                  ),
                  Donia_Input("UserName", Icon(Icons.person), false),
                  SizedBox(
                    height: 15,
                  ),
                  Donia_Input("Email", Icon(Icons.email), false),
                  SizedBox(
                    height: 15,
                  ),
                  Donia_Input("Password", Icon(Icons.key), true),
                  SizedBox(
                    height: 15,
                  ),
                  Donia_Input("R-Password", Icon(Icons.key), true),
                  SizedBox(
                    height: 15,
                  ),
                  Donia_Input("FullName", Icon(Icons.person_add), false),
                  SizedBox(
                    height: 25,
                  ),
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
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button3lsaramegy_text(Color(0xffEFBF00), 200, 50,
                            Text("SingUp"), () {}, 27),
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
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
