import 'package:flutter/material.dart';

class ItemSuraDetials extends StatelessWidget {
  String text;

  int index;

  ItemSuraDetials({required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Text('$text (${index + 1})',
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center),
    );
  }
}
