import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';
import 'package:ubc_rec_refferee_app/components/timer_team_score_with_button.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      isAppBar: false,
      body: Container(
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
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
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: TimerTimeOuts(),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: ClockBox(
                            minutes: 20,
                            seconds: 00,
                            size: 80,
                          ),
                        ),
                        Expanded(
                          child: RectangleButton(
                            edgeInset: EdgeInsets.all(5),
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
                children: <Widget>[
                  Expanded(
                    child: TimerTeamScoreButton(
                      score: 20,
                      teamName: "Rachels Team",
                      function: () {
                        Navigator.pushNamed(context, "ScorePage");
                      },
                    ),
                  ),
                  Expanded(
                    child: TimerTeamScoreButton(
                      score: 19,
                      teamName: "JPs Team",
                      function: () {
                        Navigator.pushNamed(context, "ScorePage");
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: RectangleButton(
                text: "End Game",
                function: () {
                  Navigator.pushReplacementNamed(context, "EndGamePage");
                },
                edgeInset: EdgeInsets.all(10),
              ),
            )
          ],
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
              edgeInset: EdgeInsets.symmetric(vertical: 10),
              text: "T/O",
              function: () {
                Navigator.pushNamed(context, "TimeOutPage");
              },
              color: Colors.lightBlueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
