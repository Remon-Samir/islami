import 'package:first_project/categories.dart';
import 'package:first_project/category_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<Categry> categoryList = [];

  HomeScreen() {
    creatCategory();
  }

  void creatCategory() {
    for (int i = 0; i < 100; i++) {
      categoryList.add(Categry(
          imagePath: 'assets/images/cars.jpg', nameCategory: 'name $i'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Practice')),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: categoryList.length,
            itemBuilder: (context, index) => Categories(
                imagePath: categoryList[index].imagePath,
                nameCategory: categoryList[index].nameCategory)));
  }
}
