import 'package:flutter/material.dart';

class XoButton extends StatelessWidget {
  Function onButtonClickCallBack;

  String text;

  int index;

  XoButton(
      {required this.index,
      required this.text,
      required this.onButtonClickCallBack});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
          onPressed: () {
            onButtonClickCallBack(index);
          },
          child: Text(
            '$text',
            style: TextStyle(fontSize: 30),
          )),
    ));
  }
}
