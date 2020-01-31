import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/pages/clock_page.dart';
import 'package:ubc_rec_refferee_app/pages/endGame_page.dart';
import 'package:ubc_rec_refferee_app/pages/main_page.dart';
import 'package:ubc_rec_refferee_app/pages/newGame_page.dart';
import 'package:ubc_rec_refferee_app/pages/score_page.dart';
import 'package:ubc_rec_refferee_app/pages/timer_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UBC Rec Flag Football Referee App',
      home: SafeArea(
        child: Scaffold(
          appBar: true
              ? AppBar(
                  title: Text("UBC REC Flag Football App"),
                )
              : PreferredSize(
                  preferredSize: Size(0.0, 0.0),
                  child: Container(),
                ),
          bottomNavigationBar: BottomNavigationBar(
            // TODO: make sure the buttons work and send the user to the pages
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                title: Text("Rules"),
                icon: Icon(Icons.book),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                title: Text("Inerpretations"),
              ),
            ],
          ),
          body: NewGamePage(),
        ),
      ),
    );
  }
}
