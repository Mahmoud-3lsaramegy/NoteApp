import 'package:flutter/material.dart';

import 'User_Sign_page/sign_in_page.dart';

import 'User_Sign_page/sign_up_page.dart';

void main() {
  runApp(const Notemain());
}

class Notemain extends StatefulWidget {
  const Notemain({Key? key}) : super(key: key);

  @override
  State<Notemain> createState() => _NotemainState();
}

class _NotemainState extends State<Notemain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginpage(),
      routes: {
        "login": (context) => Loginpage(),
        "singUp": (context) => SingUp(),
      },
    );
  }
}
