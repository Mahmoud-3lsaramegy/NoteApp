import 'package:flutter/material.dart';

// Logo Icon
class LOgoIcon extends StatelessWidget {
  double width, height;
  String image;
  LOgoIcon(this.width, this.height, this.image);
  @override
  Widget build(BuildContext context) {
    return // logo Icon
        Center(
      child: Container(
        width: width,
        height: height,
        child: Image.asset(
          image,
          filterQuality: FilterQuality.none,
          fit: BoxFit.fill,
        ),
      ),
    );
    /*logo End 
          size =148.0
          center. */
  }
}

// Button Class
class Button3lsaramegy_text extends StatelessWidget {
  Color color_button;
  double width, height, round;
  Widget titel;
  var Button;
  Button3lsaramegy_text(
    this.color_button,
    this.width,
    this.height,
    this.titel,
    this.Button(),
    this.round,
  );
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Button();
      },
      child: titel,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(round),
        )),
        backgroundColor: MaterialStateProperty.all(color_button),
        fixedSize: MaterialStateProperty.all(Size(width, height)),
      ),
    );
  }
}

// Input*Form_Field
class Donia_Input extends StatelessWidget {
  Donia_Input(this.hinttext, this.preIcon, this.Scurity);
  String hinttext;
  Icon preIcon;
  bool Scurity;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: Scurity,
      maxLines: 1,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: "$hinttext",
        prefixIcon: preIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(27)),
      ),
    );
  }
}
// list Nots

class ListNote extends StatelessWidget {
  var titel, image, icon;

  ListNote(this.titel, this.image, this.icon);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: titel,
      leading: Image.asset(image),
      trailing: icon,
    );
  }
}
