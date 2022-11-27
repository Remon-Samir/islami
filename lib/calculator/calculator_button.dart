import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String text;

  Function clickButtonCallBack;

  CalculatorButton({required this.text, required this.clickButtonCallBack});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
          onPressed: () {
            clickButtonCallBack(text);
          },
          child: Text(
            '$text',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
    ));
  }
}
