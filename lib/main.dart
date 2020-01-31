import 'package:flutter/material.dart';
import 'components/allComponents.dart';
import 'package:ubc_rec_refferee_app/pages/clock_page.dart';
import 'package:ubc_rec_refferee_app/pages/endGame_page.dart';
import 'package:ubc_rec_refferee_app/pages/main_page.dart';
import 'package:ubc_rec_refferee_app/pages/newGame_page.dart';
import 'package:ubc_rec_refferee_app/pages/score_page.dart';
import 'package:ubc_rec_refferee_app/pages/timeOut_page.dart';
import 'package:ubc_rec_refferee_app/pages/timer_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "MainPage",
      routes: {
        "MainPage": (context) => MainPage(),
        "ClockPage": (context) => ClockPage(),
        "EndGamePage": (context) => EndGamePage(),
        "NewGamePage": (context) => NewGamePage(),
        "ScorePage": (context) => ScorePage(),
        "TimeOutPage": (context) => TimeOutPage(),
        "TimerPage": (context) => TimerPage()
      },
    );
  }
}
