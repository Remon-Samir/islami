import 'package:first_project/islamy/quran_tab/sura_name_details.dart';
import 'package:flutter/material.dart';

class SuraName extends StatelessWidget {
  int index;

  String name;

  SuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraNameDetails.routeName,
              arguments: SuraNameDetailsArgs(name: name, index: index));
        },
        child: Text('$name',
            style: Theme.of(context).textTheme.subtitle2,
            textAlign: TextAlign.center));
  }
}
