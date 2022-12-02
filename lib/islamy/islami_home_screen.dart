import 'package:first_project/islamy/ahadeth_tab/ahadeth.dart';
import 'package:first_project/islamy/my_theme.dart';
import 'package:first_project/islamy/quran_tab/quran.dart';
import 'package:first_project/islamy/radio_tab/radio.dart';
import 'package:first_project/islamy/tasbeh_tab/tasbeh.dart';
import 'package:flutter/material.dart';

class IslamiHomeScreen extends StatefulWidget {
  static const String routeName = 'homescreen';

  @override
  State<IslamiHomeScreen> createState() => _IslamiHomeScreenState();
}

class _IslamiHomeScreenState extends State<IslamiHomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/main_background.png'),
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami', style: Theme.of(context).textTheme.headline1),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            child: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: MyThemeData.primaryLight),
              child: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (index) {
                    selectedIndex = index;
                    setState(() {});
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                            AssetImage('assets/images/icon_quran.png')),
                        label: 'Quran'),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                            AssetImage('assets/images/icon_sebha.png')),
                        label: 'Tasbeh'),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                            AssetImage('assets/images/icon_ahadeth.png')),
                        label: 'Ahadeth'),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                            AssetImage('assets/images/icon_radio.png')),
                        label: 'Radio'),
                  ]),
            ),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), TasbehTab(), AhadethTab(), RadioTab()];
}
