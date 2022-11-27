import 'package:first_project/calculator/calculator_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  static const String routeName = 'calculator';

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String resText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Column(children: [
        Expanded(
            child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: Text(
                  '$resText',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ))),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton(
                text: '7',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '8',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '9',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '*',
                clickButtonCallBack: operation,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton(
                text: '4',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '5',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '6',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '/',
                clickButtonCallBack: operation,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton(
                text: '1',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '2',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '3',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '+',
                clickButtonCallBack: operation,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton(
                text: '0',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '.',
                clickButtonCallBack: onButtonClic,
              ),
              CalculatorButton(
                text: '=',
                clickButtonCallBack: onEqual,
              ),
              CalculatorButton(
                text: '-',
                clickButtonCallBack: operation,
              ),
            ],
          ),
        ),
      ]),
    );
  }

  void onButtonClic(text) {
    resText += text;
    setState(() {});
  }

  String operator = '';
  String res = '';

  operation(String clickedOperator) {
    if (operator.isEmpty) {
      res = resText;
      operator = clickedOperator;
    } else {
      String rhs = resText;
      res = calculate(rhs, operator, res);
    }
    resText = '';
    clickedOperator = '';
    setState(() {});
  }

  String calculate(String rhs, String operator, String lhs) {
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    double res = 0;
    if (operator == '/') {
      res = num1 / num2;
    } else if (operator == '*') {
      res = num1 * num2;
    } else if (operator == '-') {
      res = num1 - num2;
    } else if (operator == '+') {
      res = num1 + num2;
    }
    return res.toString();
  }

  onEqual() {
    String rhs = resText;
    res = calculate(rhs, operator, res);
    resText = res;

    setState(() {});
    operator = '';
  }
}
