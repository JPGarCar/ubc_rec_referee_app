import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/rectangle_button.dart';
import 'package:ubc_rec_refferee_app/main_page.dart';

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
          body: Container(
            padding: EdgeInsets.all(10),
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Text("Field"),
                          color: Colors.lightGreenAccent,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Text("Game Time"),
                          color: Colors.lightGreenAccent,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: TimerTimeOuts(),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Text("TIMER"),
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                            Expanded(
                              child: RectangleButton(
                                text: "Start",
                                function: null,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TimerTimeOuts(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: TimerTeamScore(),
                      ),
                      Expanded(
                        flex: 1,
                        child: TimerTeamScore(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: RectangleButton(text: "End Game", function: null),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimerTimeOuts extends StatelessWidget {
  const TimerTimeOuts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text("1"),
              color: Colors.redAccent,
            ),
          ),
          Expanded(
            child: RectangleButton(
              edgeInset: 10,
              text: "T/O",
              function: null,
              color: Colors.lightBlueAccent,
            ),
          ),
        ],
      ),
    );
  }
}

class TimerTeamScore extends StatelessWidget {
  const TimerTeamScore({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                "Team Name Two",
                textAlign: TextAlign.center,
              ),
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Text(
                "20",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black),
              ),
              constraints: BoxConstraints.expand(),
            ),
          ),
        ],
      ),
    );
  }
}
