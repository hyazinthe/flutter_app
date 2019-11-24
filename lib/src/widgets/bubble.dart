import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  String text;

  Bubble({this.text});

  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      margin: EdgeInsets.all(10.0),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0))
        ],
      )),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blue,
          offset: new Offset(3.0, 3.0),
          blurRadius: 13.0,
        )
      ], color: Colors.blue, borderRadius: BorderRadius.circular(25.0)),
    );
  }
}
