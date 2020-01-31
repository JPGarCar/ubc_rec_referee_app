import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';

class EndGamePage extends StatefulWidget {
  @override
  _EndGamePageState createState() => _EndGamePageState();
}

class _EndGamePageState extends State<EndGamePage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: <Widget>[
                    // TODO set style for these texts
                    Text("End of Game"),
                    Text("Field"),
                    Text("Time")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TimerTeamScore(
                      score: 22,
                      teamName: "Team One",
                    ),
                  ),
                  Expanded(
                      child: TimerTeamScore(
                    score: 20,
                    teamName: "Team Two",
                  ))
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: RectangleButton(
                    text: "Back To Main Menu",
                    function: () {
                      Navigator.popAndPushNamed(context, "MainPage");
                    },
                    edgeInset: EdgeInsets.all(8)))
          ],
        ),
      ),
    );
  }
}
