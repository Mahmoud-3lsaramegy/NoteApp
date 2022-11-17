// Main File Lunch Point

/*

giter   Files 

 */
import 'package:flutter/material.dart';
import 'package:noteapp/Add-Edit-Note/AddNote.dart';
import 'package:noteapp/HomePage/HomePage.dart';
import 'User_Sign_page/sign_in_page.dart';
import 'User_Sign_page/sign_up_page.dart';

// Lunch Fun  main();
void main() {
  runApp(const Notemain());
}

/*

Main  Class 

Control to show  pages

*/

class Notemain extends StatefulWidget {
  const Notemain({Key? key}) : super(key: key);

  @override
  State<Notemain> createState() => _NotemainState();
}

class _NotemainState extends State<Notemain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
      routes: {
        "login": (context) => const Loginpage(),
        "home": (context) => const NoteHome(),
        "singUp": (context) => const SingUp(),
        "addNote": (context) => const AddNote(),
      },
      theme: ThemeData(
        primaryColor: Color(0xffEFBF00),
        fontFamily: "Pacifico",
        appBarTheme: AppBarTheme(color: Color(0xffEFBF00)),
      ),
    );
  }
}


// Cerate By  Elsaramegy