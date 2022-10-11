import 'package:flutter/material.dart';

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
    "note": "Hi Im Note 1 Hi Im Note 1Hi Im Note 1 Hi Im Note 1",
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
    return ListView.builder(itemBuilder: 5);
  }
}
