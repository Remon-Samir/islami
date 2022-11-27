import 'package:first_project/assignment2_part1/story_widget.dart';
import 'package:first_project/assignment2_part1/timeline_widet.dart';
import 'package:flutter/material.dart';

class FacebookHome extends StatelessWidget {
  static const String routeName = 'homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                height: 160,
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                      itemBuilder: (context, indext) => Story(),
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                    )),
                  ],
                ),
              ),
              Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) => TimeLine()),
                  itemCount: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
              )
            ],
          )),
    );
  }
}
