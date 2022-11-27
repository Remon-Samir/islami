import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
        child: Text('Go to Home'),
      )),
    );
  }
}
