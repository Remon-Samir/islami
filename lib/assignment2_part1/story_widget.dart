import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image(image: AssetImage('assets/images/facebookStory.jpg')),
            Positioned(
              top: 0,
              left: 0,
              child: CircleAvatar(
                child: Icon(Icons.person, size: 20),
              ),
            ),
            Positioned(
              bottom: 3,
              left: 25,
              child: Text(
                'Owner',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }

}