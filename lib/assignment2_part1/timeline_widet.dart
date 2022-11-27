import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.black,
                  radius: 25),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Owner',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text('3h', style: TextStyle(fontSize: 20)),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.public)
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Here is my text',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Text(
                '100',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                width: 5,
              ),
              Image(
                image: AssetImage('assets/images/like.jpg'),
                width: 40,
                height: 40,
              ),
              Spacer(),
              Text(
                '100 comment',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage('assets/images/singleLike.jpg'),
                width: 60,
                height: 40,
              ),
              Text(
                'Like',
                style: TextStyle(fontSize: 20),
              ),
              Image(
                image: AssetImage('assets/images/comment.jpg'),
                width: 60,
                height: 40,
              ),
              Text(
                'Comment',
                style: TextStyle(fontSize: 20),
              ),
              Image(
                image: AssetImage('assets/images/share.png'),
                width: 60,
                height: 40,
              ),
              Text(
                'Share',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}