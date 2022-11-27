import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static const String routName = 'whatsChat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Row(children: [
              Icon(Icons.video_call_sharp),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.call),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu)
            ])
          ],
          title: Text('Person'),
          backgroundColor: Colors.black,
          leading: Row(children: [
            Icon(Icons.arrow_back),
            SizedBox(
              width: 4,
            ),
            Expanded(
                child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ))
          ]),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/person1.jpg'),
                      radius: 35,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text('This is My First Masseage',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text('This is My Second Masseage',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/person2.jpg'),
                      radius: 35,
                    ),
                  ],
                ),
              ),
              Spacer(),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.attach_file, color: Colors.white),
                    prefixIcon: Icon(Icons.emoji_emotions, color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)),
                    hintText: 'Type a Message',
                    hintStyle: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ));
  }
}
