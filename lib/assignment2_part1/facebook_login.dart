import 'package:first_project/assignment2_part1/facebook_homescreen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  static const String routeName = 'logInScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      backgroundColor: Colors.indigo[700],
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Icon(
            Icons.facebook,
            size: 100,
            color: Colors.white,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(0.5))),
                  hintText: 'Email or Phone',
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5), fontSize: 24)),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(0.5))),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5), fontSize: 24)),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FacebookHome()));
                },
                child: const Text('Login'),
              )),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                'Sign up for Facebook',
                style: TextStyle(
                    fontSize: 20, color: Colors.white.withOpacity(0.8)),
              )),
          Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                        fontSize: 20, color: Colors.white.withOpacity(0.8)),
                  ))),
        ]),
      ),
    );
  }
}
