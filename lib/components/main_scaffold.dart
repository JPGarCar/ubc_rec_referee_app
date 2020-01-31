import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  final body;

  MainScaffold({this.body});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
        body: body,
      ),
    );
  }
}
