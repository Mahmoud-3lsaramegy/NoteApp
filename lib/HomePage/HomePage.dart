import 'package:flutter/material.dart';
import 'package:noteapp/GUI-Lib/gui-main.dart';

var data = [
  {
    "note": "Hi Im Note 1 Hi Im Note 1Hi Im Note 1 Hi Im Note 1",
    "image": "images/logo0.png"
  },
  {
    "note": "Hi Im Note 2 Hi Im Note 1Hi Im Note 2 Hi Im Note 2",
    "image": "images/logo0.png"
  },
  {
    "note": "Hi Im Note 3 Hi Im Note 3 Hi Im Note 3 Hi Im Note 1",
    "image": "images/logo0.png"
  }
];

class NoteHome extends StatefulWidget {
  const NoteHome({super.key});

  @override
  State<NoteHome> createState() => _NoteHomeState();
}

class _NoteHomeState extends State<NoteHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Notes Page",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w100),
        )),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              return Dismissible(
                key: Key("$i"),
                child: ListNote(
                  "${data[i]['note']}",
                  "${data[i]['image']}",
                ),
              );
            },
          ),
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, "addNote");
              },
              child: Icon(Icons.add),
              backgroundColor: Color(0xffEFBF00),
              focusColor: Color(0xff72716D),
            ),
          ),
        ],
      ),
    );
  }
}


/*
 Add Scaffold 

 Add Image 

 Add Icon Button
 
 Rmove Contner Width 
*/ 