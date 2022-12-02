import 'package:first_project/islamy/my_theme.dart';
import 'package:first_project/islamy/quran_tab/item_sura_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraNameDetails extends StatefulWidget {
  static const String routeName = 'suradetails';

  @override
  State<SuraNameDetails> createState() => _SuraNameDetailsState();
}

class _SuraNameDetailsState extends State<SuraNameDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as SuraNameDetailsArgs;
    if (verses.isEmpty) {
      loadFiles(args.index);
    }

    return Stack(children: [
      Image(
        image: AssetImage('assets/images/main_background.png'),
        width: double.infinity,
        height: double.infinity,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text('${args.name}',
                style: Theme.of(context).textTheme.headline1),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: verses.length == 0
                ? Center(
                    child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ))
                : ListView.separated(
                    itemBuilder: (context, index) =>
                        ItemSuraDetials(text: verses[index], index: (index)),
                    separatorBuilder: (context, index) => Divider(
                          color: MyThemeData.primaryLight,
                          thickness: 1,
                        ),
                    itemCount: verses.length),
          ))
    ]);
  }

  void loadFiles(int index) async {
    String data = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = data.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraNameDetailsArgs {
  String name;

  int index;

  SuraNameDetailsArgs({required this.name, required this.index});
}
