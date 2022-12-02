import 'package:first_project/assignment2_part1/facebook_login.dart';
import 'package:first_project/calculator/calculator_screen.dart';
import 'package:first_project/chat_page.dart';
import 'package:first_project/islamy/islami_home_screen.dart';
import 'package:first_project/islamy/my_theme.dart';
import 'package:first_project/islamy/quran_tab/sura_name_details.dart';
import 'package:first_project/login.dart';
import 'package:first_project/xo_game/game_board.dart';
import 'package:first_project/xo_game/player_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LogIn.routeName: (context) {
          return LogIn();
        },
        LogInScreen.routeName: (context) => LogInScreen(),
        ChatPage.routName: (context) {
          return ChatPage();
        },
        GameBoard.routeName: (context) => GameBoard(),
        PlayerName.routeName: (context) => PlayerName(),
        Calculator.routeName: (context) => Calculator(),
        IslamiHomeScreen.routeName: (context) => IslamiHomeScreen(),
        SuraNameDetails.routeName: ((context) => SuraNameDetails())
      },
      initialRoute: IslamiHomeScreen.routeName,
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
    );
  }
}
