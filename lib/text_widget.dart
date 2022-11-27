import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String title;

  TextWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        color: Colors.purple,
        child: Text(
          '$title',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}