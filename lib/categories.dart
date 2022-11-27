import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  String imagePath;

  String nameCategory;

  Categories({required this.imagePath, required this.nameCategory});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image.asset('$imagePath'),
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: Color.fromRGBO(229, 37, 156, 0.540196078431372547),
              child: Text(
                '$nameCategory',
                style: TextStyle(color: Colors.white, fontSize: 15),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
