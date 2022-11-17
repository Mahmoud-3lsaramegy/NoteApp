import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:noteapp/GUI-Lib/gui-main.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.only(top: 12.5, left: 18.5, right: 18.5),
                    child: TextField(
                      style: TextStyle(fontFamily: "Cairo"),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        label: Text("Title"),
                      ),
                      maxLines: 1,
                      minLines: 1,
                      maxLength: 30,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 12.5, left: 18.5, right: 18.5),
                  child: TextField(
                    style: TextStyle(fontFamily: "Cairo"),
                    decoration: InputDecoration(
                      hintMaxLines: 100,
                      border: InputBorder.none,
                      label: Text("Note"),
                    ),
                    maxLines: 100,
                    minLines: 20,
                    maxLength: 1000,
                    selectionHeightStyle:
                        BoxHeightStyle.includeLineSpacingBottom,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button3lsaramegy_text(
                        Color(0xffEFBF00),
                        75,
                        75,
                        Icon(
                          Icons.add_a_photo,
                          size: 35,
                        ), () {
                      showBottomSheet(context);
                    }, 50),
                    Button3lsaramegy_text(
                        Color(0xffEFBF00),
                        75,
                        75,
                        Icon(
                          Icons.save,
                          size: 35,
                        ),
                        () {},
                        50),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}

showBottomSheet(context) {
  return showModalBottomSheet(
      elevation: 3,
      context: context,
      builder: (context) {
        return Container(
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Button3lsaramegy_text(
                  Color(0xffEFBF00),
                  50,
                  50,
                  Icon(
                    Icons.image,
                    size: 35,
                  ),
                  () {},
                  50),
              Button3lsaramegy_text(
                  Color(0xffEFBF00),
                  50,
                  50,
                  Icon(
                    Icons.camera,
                    size: 35,
                  ),
                  () {},
                  50),
            ],
          ),
        );
      });
}
